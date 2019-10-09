.class public Landroid/net/apf/ApfFilter$ApfConfiguration;
.super Ljava/lang/Object;
.source "ApfFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/apf/ApfFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ApfConfiguration"
.end annotation


# instance fields
.field public apfCapabilities:Landroid/net/apf/ApfCapabilities;

.field public ethTypeBlackList:[I

.field public ieee802_3Filter:Z

.field public multicastFilter:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
