.class Lcom/android/server/firewall/SenderFilter$1;
.super Lcom/android/server/firewall/FilterFactory;
.source "SenderFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/firewall/SenderFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "tag"    # Ljava/lang/String;

    .line 58
    invoke-direct {p0, p1}, Lcom/android/server/firewall/FilterFactory;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public newFilter(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/firewall/Filter;
    .registers 7
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 61
    const-string/jumbo v0, "type"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "typeString":Ljava/lang/String;
    if-eqz v0, :cond_59

    .line 66
    const-string/jumbo v2, "system"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 67
    # getter for: Lcom/android/server/firewall/SenderFilter;->SYSTEM:Lcom/android/server/firewall/Filter;
    invoke-static {}, Lcom/android/server/firewall/SenderFilter;->access$000()Lcom/android/server/firewall/Filter;

    move-result-object v1

    return-object v1

    .line 68
    :cond_18
    const-string/jumbo v2, "signature"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 69
    # getter for: Lcom/android/server/firewall/SenderFilter;->SIGNATURE:Lcom/android/server/firewall/Filter;
    invoke-static {}, Lcom/android/server/firewall/SenderFilter;->access$100()Lcom/android/server/firewall/Filter;

    move-result-object v1

    return-object v1

    .line 70
    :cond_26
    const-string/jumbo v2, "system|signature"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 71
    # getter for: Lcom/android/server/firewall/SenderFilter;->SYSTEM_OR_SIGNATURE:Lcom/android/server/firewall/Filter;
    invoke-static {}, Lcom/android/server/firewall/SenderFilter;->access$200()Lcom/android/server/firewall/Filter;

    move-result-object v1

    return-object v1

    .line 72
    :cond_34
    const-string/jumbo v2, "userId"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 73
    # getter for: Lcom/android/server/firewall/SenderFilter;->USER_ID:Lcom/android/server/firewall/Filter;
    invoke-static {}, Lcom/android/server/firewall/SenderFilter;->access$300()Lcom/android/server/firewall/Filter;

    move-result-object v1

    return-object v1

    .line 75
    :cond_42
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid type attribute for <sender>: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p1, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v2

    .line 63
    :cond_59
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v3, "type attribute must be specified for <sender>"

    invoke-direct {v2, v3, p1, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v2
.end method
