.class Lcom/android/server/am/ActivityManagerService$18;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->inputDispatchingTimedOut(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field final synthetic val$aboveSystem:Z

.field final synthetic val$activity:Lcom/android/server/am/ActivityRecord;

.field final synthetic val$annotation:Ljava/lang/String;

.field final synthetic val$parent:Lcom/android/server/am/ActivityRecord;

.field final synthetic val$proc:Lcom/android/server/am/ProcessRecord;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)V
    .registers 7
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;

    .line 14592
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$18;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$18;->val$proc:Lcom/android/server/am/ProcessRecord;

    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$18;->val$activity:Lcom/android/server/am/ActivityRecord;

    iput-object p4, p0, Lcom/android/server/am/ActivityManagerService$18;->val$parent:Lcom/android/server/am/ActivityRecord;

    iput-boolean p5, p0, Lcom/android/server/am/ActivityManagerService$18;->val$aboveSystem:Z

    iput-object p6, p0, Lcom/android/server/am/ActivityManagerService$18;->val$annotation:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 14595
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$18;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$18;->val$proc:Lcom/android/server/am/ProcessRecord;

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$18;->val$activity:Lcom/android/server/am/ActivityRecord;

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$18;->val$parent:Lcom/android/server/am/ActivityRecord;

    iget-boolean v5, p0, Lcom/android/server/am/ActivityManagerService$18;->val$aboveSystem:Z

    iget-object v6, p0, Lcom/android/server/am/ActivityManagerService$18;->val$annotation:Ljava/lang/String;

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/AppErrors;->appNotResponding(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)V

    .line 14596
    return-void
.end method
