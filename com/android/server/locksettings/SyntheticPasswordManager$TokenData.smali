.class Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;
.super Ljava/lang/Object;
.source "SyntheticPasswordManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/SyntheticPasswordManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TokenData"
.end annotation


# instance fields
.field aggregatedSecret:[B

.field secdiscardableOnDisk:[B

.field weaverSecret:[B


# direct methods
.method constructor <init>()V
    .registers 1

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
