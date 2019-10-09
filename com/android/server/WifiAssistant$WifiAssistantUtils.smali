.class public Lcom/android/server/WifiAssistant$WifiAssistantUtils;
.super Ljava/lang/Object;
.source "WifiAssistant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WifiAssistant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WifiAssistantUtils"
.end annotation


# static fields
.field private static final SECURITY_EAP:I = 0x3

.field private static final SECURITY_NONE:I = 0x0

.field private static final SECURITY_PSK:I = 0x1

.field private static final SECURITY_WAPI_CERT:I = 0xb

.field private static final SECURITY_WAPI_PSK:I = 0xa

.field private static final SECURITY_WEP:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 508
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createQuotedSSID(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "ssid"    # Ljava/lang/String;

    .line 527
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSecurity(Landroid/net/wifi/ScanResult;)I
    .registers 3
    .param p0, "scanResult"    # Landroid/net/wifi/ScanResult;

    .line 531
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WAPI-KEY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_48

    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WAPI-PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_48

    .line 533
    :cond_15
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WAPI-CERT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 534
    const/16 v0, 0xb

    return v0

    .line 536
    :cond_22
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WEP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 537
    const/4 v0, 0x2

    return v0

    .line 538
    :cond_2e
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 539
    const/4 v0, 0x1

    return v0

    .line 540
    :cond_3a
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "EAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 541
    const/4 v0, 0x3

    return v0

    .line 543
    :cond_46
    const/4 v0, 0x0

    return v0

    .line 532
    :cond_48
    :goto_48
    const/16 v0, 0xa

    return v0
.end method

.method public static getSecurity(Landroid/net/wifi/WifiConfiguration;)I
    .registers 4
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 547
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 548
    const/16 v0, 0xa

    return v0

    .line 550
    :cond_d
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 551
    const/16 v0, 0xb

    return v0

    .line 553
    :cond_1a
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 554
    return v1

    .line 556
    :cond_24
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    const/4 v2, 0x3

    if-nez v0, :cond_41

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 557
    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_37

    goto :goto_41

    .line 560
    :cond_37
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    if-eqz v0, :cond_3f

    goto :goto_40

    :cond_3f
    move v1, v2

    :goto_40
    return v1

    .line 558
    :cond_41
    :goto_41
    return v2
.end method

.method public static isScanResultMatchNetwork(Landroid/net/wifi/ScanResult;Landroid/net/wifi/WifiConfiguration;)Z
    .registers 4
    .param p0, "scanResult"    # Landroid/net/wifi/ScanResult;
    .param p1, "network"    # Landroid/net/wifi/WifiConfiguration;

    .line 522
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/WifiAssistant$WifiAssistantUtils;->createQuotedSSID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 523
    invoke-static {p0}, Lcom/android/server/WifiAssistant$WifiAssistantUtils;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v0

    invoke-static {p1}, Lcom/android/server/WifiAssistant$WifiAssistantUtils;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    if-ne v0, v1, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    .line 522
    :goto_1b
    return v0
.end method
