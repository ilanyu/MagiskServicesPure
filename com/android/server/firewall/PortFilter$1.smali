.class Lcom/android/server/firewall/PortFilter$1;
.super Lcom/android/server/firewall/FilterFactory;
.source "PortFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/firewall/PortFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "tag"    # Ljava/lang/String;

    .line 56
    invoke-direct {p0, p1}, Lcom/android/server/firewall/FilterFactory;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public newFilter(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/firewall/Filter;
    .registers 12
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 60
    const/4 v0, -0x1

    .line 61
    .local v0, "lowerBound":I
    const/4 v1, -0x1

    .line 63
    .local v1, "upperBound":I
    const-string v2, "equals"

    const/4 v3, 0x0

    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 64
    .local v2, "equalsValue":Ljava/lang/String;
    if-eqz v2, :cond_2c

    .line 67
    :try_start_b
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_f
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_f} :catch_14

    .line 71
    .local v4, "value":I
    nop

    .line 69
    nop

    .line 72
    move v0, v4

    .line 73
    move v1, v4

    .line 73
    .end local v4    # "value":I
    goto :goto_2c

    .line 68
    :catch_14
    move-exception v4

    .line 69
    .local v4, "ex":Ljava/lang/NumberFormatException;
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid port value: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, p1, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v5

    .line 76
    .end local v4    # "ex":Ljava/lang/NumberFormatException;
    :cond_2c
    :goto_2c
    const-string/jumbo v4, "min"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 77
    .local v4, "lowerBoundString":Ljava/lang/String;
    const-string/jumbo v5, "max"

    invoke-interface {p1, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 78
    .local v5, "upperBoundString":Ljava/lang/String;
    if-nez v4, :cond_3e

    if-eqz v5, :cond_80

    .line 79
    :cond_3e
    if-nez v2, :cond_86

    .line 85
    if-eqz v4, :cond_60

    .line 87
    :try_start_42
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_46
    .catch Ljava/lang/NumberFormatException; {:try_start_42 .. :try_end_46} :catch_48

    move v0, v6

    .line 92
    goto :goto_60

    .line 88
    :catch_48
    move-exception v6

    .line 89
    .local v6, "ex":Ljava/lang/NumberFormatException;
    new-instance v7, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid minimum port value: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, p1, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v7

    .line 95
    .end local v6    # "ex":Ljava/lang/NumberFormatException;
    :cond_60
    :goto_60
    if-eqz v5, :cond_80

    .line 97
    :try_start_62
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_66
    .catch Ljava/lang/NumberFormatException; {:try_start_62 .. :try_end_66} :catch_68

    move v1, v6

    .line 102
    goto :goto_80

    .line 98
    :catch_68
    move-exception v6

    .line 99
    .restart local v6    # "ex":Ljava/lang/NumberFormatException;
    new-instance v7, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid maximum port value: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, p1, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v7

    .line 107
    .end local v6    # "ex":Ljava/lang/NumberFormatException;
    :cond_80
    :goto_80
    new-instance v6, Lcom/android/server/firewall/PortFilter;

    invoke-direct {v6, v0, v1, v3}, Lcom/android/server/firewall/PortFilter;-><init>(IILcom/android/server/firewall/PortFilter$1;)V

    return-object v6

    .line 80
    :cond_86
    new-instance v6, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v7, "Port filter cannot use both equals and range filtering"

    invoke-direct {v6, v7, p1, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v6
.end method
