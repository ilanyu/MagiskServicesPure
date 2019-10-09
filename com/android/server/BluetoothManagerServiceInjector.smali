.class Lcom/android/server/BluetoothManagerServiceInjector;
.super Ljava/lang/Object;
.source "BluetoothManagerServiceInjector.java"


# static fields
.field static final BD_ADDR_NO_COLON_LEN:I = 0xc

.field static final BD_ADDR_WITH_COLON_LEN:I = 0x11

.field private static final DBG:Z = true

.field static final MASK_BD_ADDR_NO_COLON_PREFIX:Ljava/lang/String; = "000000"

.field static final MASK_BD_ADDR_WITH_COLON_DEFAULT:Ljava/lang/String; = "00:00:00:00:00:00"

.field static final MASK_BD_ADDR_WITH_COLON_PREFIX:Ljava/lang/String; = "00:00:00:"

.field private static final TAG:Ljava/lang/String; = "BluetoothManagerServiceInjector"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMaskDeviceAddress(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "address"    # Ljava/lang/String;

    .line 14
    if-eqz p0, :cond_4a

    .line 15
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x11

    if-lt v0, v1, :cond_26

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "00:00:00:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "00:00:00:"

    .line 17
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 16
    return-object v0

    .line 18
    :cond_26
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xc

    if-lt v0, v1, :cond_4a

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "000000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "000000"

    .line 20
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 19
    return-object v0

    .line 24
    :cond_4a
    const-string v0, "00:00:00:00:00:00"

    return-object v0
.end method
