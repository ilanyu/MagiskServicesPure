.class Lcom/android/server/am/ActivityManagerServiceInjector$3;
.super Landroid/app/UserSwitchObserver;
.source "ActivityManagerServiceInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerServiceInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 666
    invoke-direct {p0}, Landroid/app/UserSwitchObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserSwitchComplete(I)V
    .registers 3
    .param p1, "newUserId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 669
    # getter for: Lcom/android/server/am/ActivityManagerServiceInjector;->sDialog:Lcom/android/server/am/BaseUserSwitchingDialog;
    invoke-static {}, Lcom/android/server/am/ActivityManagerServiceInjector;->access$100()Lcom/android/server/am/BaseUserSwitchingDialog;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 670
    # getter for: Lcom/android/server/am/ActivityManagerServiceInjector;->sDialog:Lcom/android/server/am/BaseUserSwitchingDialog;
    invoke-static {}, Lcom/android/server/am/ActivityManagerServiceInjector;->access$100()Lcom/android/server/am/BaseUserSwitchingDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/BaseUserSwitchingDialog;->dismiss()V

    .line 672
    :cond_d
    return-void
.end method
