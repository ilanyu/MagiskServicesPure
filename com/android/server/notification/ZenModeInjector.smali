.class public Lcom/android/server/notification/ZenModeInjector;
.super Ljava/lang/Object;
.source "ZenModeInjector.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hideNumbers(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "str"    # Ljava/lang/String;

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "tel:"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 7
    .local v1, "index":I
    if-ltz v1, :cond_2c

    .line 12
    add-int/lit8 v2, v1, 0x7

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    add-int/lit8 v2, v1, 0x7

    .line 13
    .local v2, "i":I
    :goto_19
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_27

    .line 14
    const/16 v3, 0x2a

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 13
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 16
    .end local v2    # "i":I
    :cond_27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 18
    :cond_2c
    return-object p0
.end method
