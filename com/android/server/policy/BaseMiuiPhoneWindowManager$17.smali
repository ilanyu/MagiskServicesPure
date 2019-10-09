.class Lcom/android/server/policy/BaseMiuiPhoneWindowManager$17;
.super Ljava/lang/Object;
.source "BaseMiuiPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->sendAsyncBroadcast(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Landroid/content/Intent;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    .line 2527
    iput-object p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$17;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iput-object p2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$17;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 2530
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$17;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$17;->val$intent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2531
    return-void
.end method
