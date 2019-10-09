.class Lcom/android/server/policy/BaseMiuiPhoneWindowManager$9;
.super Ljava/lang/Object;
.source "BaseMiuiPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/BaseMiuiPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    .line 902
    iput-object p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$9;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 905
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$9;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mDoubleClickAiKeyCount:I
    invoke-static {v0, v1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$402(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;I)I

    .line 906
    const-string v0, "WindowManager"

    const-string/jumbo v1, "long press up ai key"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$9;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    const-string/jumbo v1, "key_long_press_up_ai_button_settings"

    # invokes: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->startAiKeyService(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$500(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Ljava/lang/String;)V

    .line 908
    return-void
.end method
