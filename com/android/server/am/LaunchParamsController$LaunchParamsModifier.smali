.class interface abstract Lcom/android/server/am/LaunchParamsController$LaunchParamsModifier;
.super Ljava/lang/Object;
.source "LaunchParamsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/LaunchParamsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "LaunchParamsModifier"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/LaunchParamsController$LaunchParamsModifier$Result;
    }
.end annotation


# static fields
.field public static final RESULT_CONTINUE:I = 0x2

.field public static final RESULT_DONE:I = 0x1

.field public static final RESULT_SKIP:I


# virtual methods
.method public abstract onCalculate(Lcom/android/server/am/TaskRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/LaunchParamsController$LaunchParams;Lcom/android/server/am/LaunchParamsController$LaunchParams;)I
.end method
