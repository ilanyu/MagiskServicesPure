.class public Landroid/net/ip/IpManager$InitialConfiguration;
.super Landroid/net/ip/IpClient$InitialConfiguration;
.source "IpManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ip/IpManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InitialConfiguration"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 111
    invoke-direct {p0}, Landroid/net/ip/IpClient$InitialConfiguration;-><init>()V

    return-void
.end method
