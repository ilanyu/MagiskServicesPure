.class Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener$UpdateRunnable;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateRunnable"
.end annotation


# instance fields
.field private final mRotation:I

.field final synthetic this$1:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;I)V
    .registers 3
    .param p2, "rotation"    # I

    .line 1129
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener$UpdateRunnable;->this$1:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1130
    iput p2, p0, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener$UpdateRunnable;->mRotation:I

    .line 1131
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1136
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener$UpdateRunnable;->this$1:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManagerInternal;->powerHint(II)V

    .line 1137
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener$UpdateRunnable;->this$1:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener$UpdateRunnable;->this$1:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mCurrentAppOrientation:I

    invoke-virtual {v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->isRotationChoicePossible(I)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 1138
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener$UpdateRunnable;->this$1:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener$UpdateRunnable;->this$1:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mCurrentAppOrientation:I

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener$UpdateRunnable;->mRotation:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->isValidRotationChoice(II)Z

    move-result v0

    .line 1140
    .local v0, "isValid":Z
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener$UpdateRunnable;->this$1:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener$UpdateRunnable;->mRotation:I

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->sendProposedRotationChangeToStatusBarInternal(IZ)V
    invoke-static {v1, v2, v0}, Lcom/android/server/policy/PhoneWindowManager;->access$2700(Lcom/android/server/policy/PhoneWindowManager;IZ)V

    .line 1141
    .end local v0    # "isValid":Z
    goto :goto_3c

    .line 1142
    :cond_35
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener$UpdateRunnable;->this$1:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->updateRotation(Z)V

    .line 1144
    :goto_3c
    return-void
.end method
