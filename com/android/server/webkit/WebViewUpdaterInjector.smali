.class public Lcom/android/server/webkit/WebViewUpdaterInjector;
.super Ljava/lang/Object;
.source "WebViewUpdaterInjector.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isInstalledAndEnabledForUser(Landroid/webkit/UserPackage;)Z
    .registers 3
    .param p0, "userPackage"    # Landroid/webkit/UserPackage;

    .line 13
    invoke-virtual {p0}, Landroid/webkit/UserPackage;->getUserInfo()Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-static {v0}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUser(Landroid/content/pm/UserInfo;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 14
    invoke-virtual {p0}, Landroid/webkit/UserPackage;->getUserInfo()Landroid/content/pm/UserInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    const/16 v1, 0x63

    if-ne v0, v1, :cond_15

    goto :goto_17

    .line 17
    :cond_15
    const/4 v0, 0x0

    return v0

    .line 15
    :cond_17
    :goto_17
    const/4 v0, 0x1

    return v0
.end method
