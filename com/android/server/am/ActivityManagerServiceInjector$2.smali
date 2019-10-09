.class Lcom/android/server/am/ActivityManagerServiceInjector$2;
.super Ljava/lang/Object;
.source "ActivityManagerServiceInjector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerServiceInjector;->showSwitchingDialog(Lcom/android/server/am/ActivityManagerService;ILandroid/os/Handler;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$ams:Lcom/android/server/am/ActivityManagerService;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$mTargetUserId:I


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;ILandroid/os/Handler;)V
    .registers 4

    .line 640
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerServiceInjector$2;->val$ams:Lcom/android/server/am/ActivityManagerService;

    iput p2, p0, Lcom/android/server/am/ActivityManagerServiceInjector$2;->val$mTargetUserId:I

    iput-object p3, p0, Lcom/android/server/am/ActivityManagerServiceInjector$2;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 642
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector$2;->val$ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "second_user_id"

    const/16 v2, -0x2710

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 644
    .local v0, "secondSpaceId":I
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceInjector$2;->val$ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v1}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result v1

    .line 645
    .local v1, "mCurrentUserId":I
    iget v2, p0, Lcom/android/server/am/ActivityManagerServiceInjector$2;->val$mTargetUserId:I

    if-ne v2, v0, :cond_20

    if-eqz v1, :cond_26

    :cond_20
    if-ne v1, v0, :cond_3e

    iget v2, p0, Lcom/android/server/am/ActivityManagerServiceInjector$2;->val$mTargetUserId:I

    if-nez v2, :cond_3e

    .line 647
    :cond_26
    new-instance v2, Lcom/android/server/am/SecondSpaceSwitchingDialog;

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerServiceInjector$2;->val$ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerServiceInjector$2;->val$ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/android/server/am/ActivityManagerServiceInjector$2;->val$mTargetUserId:I

    invoke-direct {v2, v3, v4, v5}, Lcom/android/server/am/SecondSpaceSwitchingDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;I)V

    # setter for: Lcom/android/server/am/ActivityManagerServiceInjector;->sDialog:Lcom/android/server/am/BaseUserSwitchingDialog;
    invoke-static {v2}, Lcom/android/server/am/ActivityManagerServiceInjector;->access$102(Lcom/android/server/am/BaseUserSwitchingDialog;)Lcom/android/server/am/BaseUserSwitchingDialog;

    .line 648
    # getter for: Lcom/android/server/am/ActivityManagerServiceInjector;->sDialog:Lcom/android/server/am/BaseUserSwitchingDialog;
    invoke-static {}, Lcom/android/server/am/ActivityManagerServiceInjector;->access$100()Lcom/android/server/am/BaseUserSwitchingDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/BaseUserSwitchingDialog;->show()V

    goto :goto_86

    .line 649
    :cond_3e
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerServiceInjector$2;->val$ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/server/am/ActivityManagerServiceInjector$2;->val$mTargetUserId:I

    # invokes: Lcom/android/server/am/ActivityManagerServiceInjector;->isKidUserSwitch(Landroid/content/Context;II)Z
    invoke-static {v2, v1, v3}, Lcom/android/server/am/ActivityManagerServiceInjector;->access$200(Landroid/content/Context;II)Z

    move-result v2

    if-eqz v2, :cond_62

    .line 650
    new-instance v2, Lcom/android/server/am/KidSpaceSwitchingDialog;

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerServiceInjector$2;->val$ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerServiceInjector$2;->val$ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/android/server/am/ActivityManagerServiceInjector$2;->val$mTargetUserId:I

    invoke-direct {v2, v3, v4, v5}, Lcom/android/server/am/KidSpaceSwitchingDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;I)V

    # setter for: Lcom/android/server/am/ActivityManagerServiceInjector;->sDialog:Lcom/android/server/am/BaseUserSwitchingDialog;
    invoke-static {v2}, Lcom/android/server/am/ActivityManagerServiceInjector;->access$102(Lcom/android/server/am/BaseUserSwitchingDialog;)Lcom/android/server/am/BaseUserSwitchingDialog;

    .line 651
    # getter for: Lcom/android/server/am/ActivityManagerServiceInjector;->sDialog:Lcom/android/server/am/BaseUserSwitchingDialog;
    invoke-static {}, Lcom/android/server/am/ActivityManagerServiceInjector;->access$100()Lcom/android/server/am/BaseUserSwitchingDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/BaseUserSwitchingDialog;->show()V

    goto :goto_86

    .line 653
    :cond_62
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerServiceInjector$2;->val$ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v2, v1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 654
    .local v2, "currentUserInfo":Landroid/content/pm/UserInfo;
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerServiceInjector$2;->val$ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    iget v4, p0, Lcom/android/server/am/ActivityManagerServiceInjector$2;->val$mTargetUserId:I

    invoke-virtual {v3, v4}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 655
    .local v3, "targetUserInfo":Landroid/content/pm/UserInfo;
    new-instance v4, Landroid/util/Pair;

    invoke-direct {v4, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 656
    .local v4, "userNames":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;>;"
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerServiceInjector$2;->val$handler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/server/am/ActivityManagerServiceInjector$2;->val$handler:Landroid/os/Handler;

    const/16 v7, 0x3e8

    invoke-virtual {v6, v7, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 659
    .end local v2    # "currentUserInfo":Landroid/content/pm/UserInfo;
    .end local v3    # "targetUserInfo":Landroid/content/pm/UserInfo;
    .end local v4    # "userNames":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;>;"
    :goto_86
    return-void
.end method
