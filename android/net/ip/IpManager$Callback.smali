.class public Landroid/net/ip/IpManager$Callback;
.super Landroid/net/ip/IpClient$Callback;
.source "IpManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ip/IpManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Callback"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 114
    invoke-direct {p0}, Landroid/net/ip/IpClient$Callback;-><init>()V

    return-void
.end method
