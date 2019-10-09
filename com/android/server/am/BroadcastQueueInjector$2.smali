.class Lcom/android/server/am/BroadcastQueueInjector$2;
.super Ljava/lang/Object;
.source "BroadcastQueueInjector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/BroadcastQueueInjector;->checkAbnormalBroadcastInQueueLocked(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/BroadcastQueue;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$ams:Lcom/android/server/am/ActivityManagerService;

.field final synthetic val$broadcastCount:I

.field final synthetic val$packageLabel:Ljava/lang/String;

.field final synthetic val$r:Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;Ljava/lang/String;I)V
    .registers 5

    .line 459
    iput-object p1, p0, Lcom/android/server/am/BroadcastQueueInjector$2;->val$ams:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/BroadcastQueueInjector$2;->val$r:Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;

    iput-object p3, p0, Lcom/android/server/am/BroadcastQueueInjector$2;->val$packageLabel:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/am/BroadcastQueueInjector$2;->val$broadcastCount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 462
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueInjector$2;->val$ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueInjector$2;->val$r:Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;

    iget-object v2, p0, Lcom/android/server/am/BroadcastQueueInjector$2;->val$packageLabel:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/am/BroadcastQueueInjector$2;->val$broadcastCount:I

    # invokes: Lcom/android/server/am/BroadcastQueueInjector;->processAbnormalBroadcast(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;Ljava/lang/String;I)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/am/BroadcastQueueInjector;->access$100(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;Ljava/lang/String;I)V

    .line 463
    return-void
.end method
