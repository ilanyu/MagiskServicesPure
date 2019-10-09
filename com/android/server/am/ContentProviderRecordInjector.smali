.class public Lcom/android/server/am/ContentProviderRecordInjector;
.super Ljava/lang/Object;
.source "ContentProviderRecordInjector.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isReleaseNeeded(Landroid/content/pm/ApplicationInfo;)Z
    .registers 3
    .param p0, "ai"    # Landroid/content/pm/ApplicationInfo;

    .line 13
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_12

    const-string v0, "com.android.settings"

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 14
    const/4 v0, 0x1

    return v0

    .line 16
    :cond_12
    const/4 v0, 0x0

    return v0
.end method
