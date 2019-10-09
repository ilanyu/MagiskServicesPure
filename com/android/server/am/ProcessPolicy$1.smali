.class Lcom/android/server/am/ProcessPolicy$1;
.super Ljava/lang/Object;
.source "ProcessPolicy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ProcessPolicy;->updateApplicationLockedState(Landroid/content/Context;ILjava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ProcessPolicy;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/server/am/ProcessPolicy;Landroid/content/Context;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/am/ProcessPolicy;

    .line 485
    iput-object p1, p0, Lcom/android/server/am/ProcessPolicy$1;->this$0:Lcom/android/server/am/ProcessPolicy;

    iput-object p2, p0, Lcom/android/server/am/ProcessPolicy$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 488
    iget-object v0, p0, Lcom/android/server/am/ProcessPolicy$1;->this$0:Lcom/android/server/am/ProcessPolicy;

    iget-object v1, p0, Lcom/android/server/am/ProcessPolicy$1;->val$context:Landroid/content/Context;

    # invokes: Lcom/android/server/am/ProcessPolicy;->saveLockedAppIntoSettings(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/android/server/am/ProcessPolicy;->access$000(Lcom/android/server/am/ProcessPolicy;Landroid/content/Context;)V

    .line 489
    return-void
.end method
