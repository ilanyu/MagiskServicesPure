.class Lcom/android/server/policy/BaseMiuiPhoneWindowManager$16;
.super Ljava/lang/Object;
.source "BaseMiuiPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->hideBootMessages()V
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

    .line 2449
    iput-object p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$16;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 2451
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$16;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMiuiBootMsgDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$4000(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 2452
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$16;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMiuiBootMsgDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$4000(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2453
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$16;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMiuiBootMsgDialog:Landroid/app/Dialog;
    invoke-static {v0, v1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$4002(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 2454
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$16;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # setter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mBootProgress:Landroid/widget/ProgressBar;
    invoke-static {v0, v1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$4102(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;

    .line 2455
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$16;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # setter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mBootTextView:Landroid/widget/TextView;
    invoke-static {v0, v1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$4302(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 2456
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$16;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # setter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mBootText:[Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$4202(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;[Ljava/lang/String;)[Ljava/lang/String;

    .line 2458
    :cond_26
    return-void
.end method
