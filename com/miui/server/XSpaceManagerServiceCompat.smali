.class Lcom/miui/server/XSpaceManagerServiceCompat;
.super Ljava/lang/Object;
.source "XSpaceManagerServiceCompat.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static setBundleDefusable(Z)V
    .registers 1
    .param p0, "defusable"    # Z

    .line 10
    invoke-static {p0}, Landroid/os/BaseBundle;->setShouldDefuse(Z)V

    .line 11
    return-void
.end method
