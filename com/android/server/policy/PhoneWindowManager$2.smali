.class Lcom/android/server/policy/PhoneWindowManager$2;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/policy/PhoneWindowManager;

    .line 560
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$2;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawn(J)V
    .registers 7
    .param p1, "screenOnDelay"    # J

    .line 565
    const-string v0, "WindowManager"

    const-string/jumbo v1, "mKeyguardDelegate.ShowListener.onDrawn."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    invoke-static {}, Lcom/android/server/ScreenOnMonitor;->getInstance()Lcom/android/server/ScreenOnMonitor;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/server/ScreenOnMonitor;->recordTime(I)V

    .line 569
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$2;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-wide v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnDelay:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_24

    .line 570
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$2;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const-wide/16 v1, 0x258

    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnDelay:J

    .line 573
    :cond_24
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$2;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 574
    return-void
.end method
