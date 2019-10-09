.class Lcom/android/server/policy/MiuiPhoneWindowManager$4;
.super Ljava/lang/Object;
.source "MiuiPhoneWindowManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/MiuiPhoneWindowManager;->bringUpActionChooseDlg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/MiuiPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/MiuiPhoneWindowManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/policy/MiuiPhoneWindowManager;

    .line 554
    iput-object p1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager$4;->this$0:Lcom/android/server/policy/MiuiPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 556
    const/4 v0, -0x1

    if-ne p2, v0, :cond_5

    .line 557
    const/4 v0, 0x1

    goto :goto_6

    .line 558
    :cond_5
    const/4 v0, 0x0

    .line 559
    .local v0, "value":I
    :goto_6
    iget-object v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager$4;->this$0:Lcom/android/server/policy/MiuiPhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/MiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "fingerprint_nav_center_action"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 561
    iget-object v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager$4;->this$0:Lcom/android/server/policy/MiuiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/MiuiPhoneWindowManager;->mFpNavCenterActionChooseDialog:Lmiui/app/AlertDialog;
    invoke-static {v1}, Lcom/android/server/policy/MiuiPhoneWindowManager;->access$400(Lcom/android/server/policy/MiuiPhoneWindowManager;)Lmiui/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_2b

    .line 562
    iget-object v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager$4;->this$0:Lcom/android/server/policy/MiuiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/MiuiPhoneWindowManager;->mFpNavCenterActionChooseDialog:Lmiui/app/AlertDialog;
    invoke-static {v1}, Lcom/android/server/policy/MiuiPhoneWindowManager;->access$400(Lcom/android/server/policy/MiuiPhoneWindowManager;)Lmiui/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/app/AlertDialog;->dismiss()V

    .line 563
    iget-object v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager$4;->this$0:Lcom/android/server/policy/MiuiPhoneWindowManager;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/policy/MiuiPhoneWindowManager;->mFpNavCenterActionChooseDialog:Lmiui/app/AlertDialog;
    invoke-static {v1, v2}, Lcom/android/server/policy/MiuiPhoneWindowManager;->access$402(Lcom/android/server/policy/MiuiPhoneWindowManager;Lmiui/app/AlertDialog;)Lmiui/app/AlertDialog;

    .line 565
    :cond_2b
    return-void
.end method
