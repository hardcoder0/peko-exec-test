; ModuleID = 'Epic pekoscript app'
source_filename = "Epic pekoscript app"

@test1 = weak dso_local global i8* null, align 8
@0 = private unnamed_addr constant [8 x i8] c"yes it \00", align 1

declare i32 @printf(i8*, ...)

declare i8* @addstr(i8*, i8*, ...)

declare i8* @mulstr(i8*, double, ...)

define void @main() {
entry:
  %calltmp = call i8* (i8*, double, ...) @mulstr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @0, i32 0, i32 0), double 5.000000e+00)
  store i8* %calltmp, i8** @test1, align 8
  %0 = load i8*, i8** @test1, align 8
  %calltmp1 = call i32 (i8*, ...) @printf(i8* %0)
  ret void
}
