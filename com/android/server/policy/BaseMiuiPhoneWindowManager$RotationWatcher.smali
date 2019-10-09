.class Lcom/android/server/policy/BaseMiuiPhoneWindowManager$RotationWatcher;
.super Landroid/view/IRotationWatcher$Stub;
.source "BaseMiuiPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/BaseMiuiPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RotationWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    .line 2090
    iput-object p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$RotationWatcher;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-direct {p0}, Landroid/view/IRotationWatcher$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRotationChanged(I)V
    .registers 5
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2094
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "rotation changed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2095
    invoke-static {}, Lmiui/util/ITouchFeature;->getInstance()Lmiui/util/ITouchFeature;

    move-result-object v0

    .line 2096
    .local v0, "touchFeature":Lmiui/util/ITouchFeature;
    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Lmiui/util/ITouchFeature;->setTouchMode(II)Z

    .line 2097
    return-void
.end method
