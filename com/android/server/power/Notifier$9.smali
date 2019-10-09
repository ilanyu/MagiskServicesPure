.class Lcom/android/server/power/Notifier$9;
.super Ljava/lang/Object;
.source "Notifier.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/Notifier;->onWakefulnessInHangUp(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/Notifier;


# direct methods
.method constructor <init>(Lcom/android/server/power/Notifier;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/power/Notifier;

    .line 816
    iput-object p1, p0, Lcom/android/server/power/Notifier$9;->this$0:Lcom/android/server/power/Notifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 819
    iget-object v0, p0, Lcom/android/server/power/Notifier$9;->this$0:Lcom/android/server/power/Notifier;

    # invokes: Lcom/android/server/power/Notifier;->updateRotationOffState()V
    invoke-static {v0}, Lcom/android/server/power/Notifier;->access$500(Lcom/android/server/power/Notifier;)V

    .line 820
    iget-object v0, p0, Lcom/android/server/power/Notifier$9;->this$0:Lcom/android/server/power/Notifier;

    # invokes: Lcom/android/server/power/Notifier;->sendHangupBroadcast()V
    invoke-static {v0}, Lcom/android/server/power/Notifier;->access$600(Lcom/android/server/power/Notifier;)V

    .line 821
    return-void
.end method
