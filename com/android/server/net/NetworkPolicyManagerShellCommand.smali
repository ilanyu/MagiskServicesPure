.class Lcom/android/server/net/NetworkPolicyManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "NetworkPolicyManagerShellCommand.java"


# instance fields
.field private final mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/net/NetworkPolicyManagerService;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .line 38
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 39
    iput-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 40
    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 41
    return-void
.end method

.method private addRestrictBackgroundBlacklist()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 273
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->setUidPolicy(I)I

    move-result v0

    return v0
.end method

.method private addRestrictBackgroundWhitelist()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 265
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->setUidPolicy(I)I

    move-result v0

    return v0
.end method

.method private getNextBooleanArg()I
    .registers 4

    .line 337
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 338
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 339
    .local v1, "arg":Ljava/lang/String;
    if-nez v1, :cond_11

    .line 340
    const-string v2, "Error: didn\'t specify BOOLEAN"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 341
    const/4 v2, -0x1

    return v2

    .line 343
    :cond_11
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2
.end method

.method private getRestrictBackground()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 218
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 219
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string v1, "Restrict background status: "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 220
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->getRestrictBackground()Z

    move-result v1

    if-eqz v1, :cond_14

    const-string v1, "enabled"

    goto :goto_16

    :cond_14
    const-string v1, "disabled"

    :goto_16
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 221
    const/4 v1, 0x0

    return v1
.end method

.method private getUidFromNextArg()I
    .registers 6

    .line 347
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 348
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 349
    .local v1, "arg":Ljava/lang/String;
    if-nez v1, :cond_11

    .line 350
    const-string v2, "Error: didn\'t specify UID"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 351
    const/4 v2, -0x1

    return v2

    .line 354
    :cond_11
    :try_start_11
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_15
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_15} :catch_16

    return v2

    .line 355
    :catch_16
    move-exception v2

    .line 356
    .local v2, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: UID ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") should be a number"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 357
    const/4 v3, -0x2

    return v3
.end method

.method private listRestrictBackgroundBlacklist()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 213
    const-string v0, "Restrict background blacklisted UIDs"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->listUidPolicies(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private listRestrictBackgroundWhitelist()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 208
    const-string v0, "Restrict background whitelisted UIDs"

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->listUidPolicies(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private listUidPolicies(Ljava/lang/String;I)I
    .registers 9
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "policy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 191
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 192
    .local v0, "pw":Ljava/io/PrintWriter;
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->getUidsWithPolicy(I)[I

    move-result-object v1

    .line 193
    .local v1, "uids":[I
    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 194
    array-length v2, v1

    const/4 v3, 0x0

    if-nez v2, :cond_1d

    .line 195
    const-string/jumbo v2, "none"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2e

    .line 197
    :cond_1d
    move v2, v3

    .line 197
    .local v2, "i":I
    :goto_1e
    array-length v4, v1

    if-ge v2, v4, :cond_2e

    .line 198
    aget v4, v1, v2

    .line 199
    .local v4, "uid":I
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 200
    const/16 v5, 0x20

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 197
    .end local v4    # "uid":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 203
    .end local v2    # "i":I
    :cond_2e
    :goto_2e
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 204
    return v3
.end method

.method private listWifiNetworks()I
    .registers 8

    .line 281
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 282
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 284
    .local v1, "arg":Ljava/lang/String;
    if-nez v1, :cond_c

    .line 285
    const/4 v2, 0x0

    .local v2, "match":I
    :goto_b
    goto :goto_15

    .line 286
    .end local v2    # "match":I
    :cond_c
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 287
    const/4 v2, 0x1

    goto :goto_b

    .line 289
    :cond_14
    const/4 v2, 0x2

    .line 292
    .restart local v2    # "match":I
    :goto_15
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    .line 293
    .local v3, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_47

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiConfiguration;

    .line 294
    .local v5, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v1, :cond_31

    iget v6, v5, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    if-ne v6, v2, :cond_46

    .line 295
    :cond_31
    invoke-static {v5}, Landroid/net/NetworkPolicyManager;->resolveNetworkId(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 296
    const/16 v6, 0x3b

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(C)V

    .line 297
    iget v6, v5, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    invoke-static {v6}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->overrideToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 299
    .end local v5    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_46
    goto :goto_1f

    .line 300
    :cond_47
    const/4 v4, 0x0

    return v4
.end method

.method private static overrideToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "override"    # I

    .line 321
    packed-switch p0, :pswitch_data_e

    .line 324
    const-string/jumbo v0, "none"

    return-object v0

    .line 323
    :pswitch_7
    const-string v0, "false"

    return-object v0

    .line 322
    :pswitch_a
    const-string/jumbo v0, "true"

    return-object v0

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_a
        :pswitch_7
    .end packed-switch
.end method

.method private removeRestrictBackgroundBlacklist()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 277
    const-string/jumbo v0, "not blacklisted"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->resetUidPolicy(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private removeRestrictBackgroundWhitelist()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 269
    const-string/jumbo v0, "not whitelisted"

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->resetUidPolicy(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private resetUidPolicy(Ljava/lang/String;I)I
    .registers 7
    .param p1, "errorMessage"    # Ljava/lang/String;
    .param p2, "expectedPolicy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 250
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getUidFromNextArg()I

    move-result v0

    .line 251
    .local v0, "uid":I
    if-gez v0, :cond_7

    .line 252
    return v0

    .line 254
    :cond_7
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->getUidPolicy(I)I

    move-result v1

    .line 255
    .local v1, "actualPolicy":I
    if-eq v1, p2, :cond_25

    .line 256
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    .line 257
    .local v2, "pw":Ljava/io/PrintWriter;
    const-string v3, "Error: UID "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {v2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 258
    const/4 v3, -0x1

    return v3

    .line 260
    .end local v2    # "pw":Ljava/io/PrintWriter;
    :cond_25
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicy(II)V

    .line 261
    return v3
.end method

.method private runAdd()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 157
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 158
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, "type":Ljava/lang/String;
    const/4 v2, -0x1

    if-nez v1, :cond_11

    .line 160
    const-string v3, "Error: didn\'t specify type of data to add"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 161
    return v2

    .line 163
    :cond_11
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x27d90651

    if-eq v3, v4, :cond_2b

    const v4, 0x261f10d9

    if-eq v3, v4, :cond_20

    goto :goto_36

    :cond_20
    const-string/jumbo v3, "restrict-background-whitelist"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    const/4 v3, 0x0

    goto :goto_37

    :cond_2b
    const-string/jumbo v3, "restrict-background-blacklist"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    const/4 v3, 0x1

    goto :goto_37

    :cond_36
    :goto_36
    move v3, v2

    :goto_37
    packed-switch v3, :pswitch_data_5e

    .line 169
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: unknown add type \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 170
    return v2

    .line 167
    :pswitch_54
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->addRestrictBackgroundBlacklist()I

    move-result v2

    return v2

    .line 165
    :pswitch_59
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->addRestrictBackgroundWhitelist()I

    move-result v2

    return v2

    :pswitch_data_5e
    .packed-switch 0x0
        :pswitch_59
        :pswitch_54
    .end packed-switch
.end method

.method private runGet()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 104
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 105
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, "type":Ljava/lang/String;
    const/4 v2, -0x1

    if-nez v1, :cond_11

    .line 107
    const-string v3, "Error: didn\'t specify type of data to get"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 108
    return v2

    .line 110
    :cond_11
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x2c87c721

    if-eq v3, v4, :cond_1b

    goto :goto_26

    :cond_1b
    const-string/jumbo v3, "restrict-background"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    const/4 v3, 0x0

    goto :goto_27

    :cond_26
    :goto_26
    move v3, v2

    :goto_27
    if-eqz v3, :cond_43

    .line 114
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: unknown get type \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 115
    return v2

    .line 112
    :cond_43
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getRestrictBackground()I

    move-result v2

    return v2
.end method

.method private runList()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 138
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 139
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 140
    .local v1, "type":Ljava/lang/String;
    const/4 v2, -0x1

    if-nez v1, :cond_11

    .line 141
    const-string v3, "Error: didn\'t specify type of data to list"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 142
    return v2

    .line 144
    :cond_11
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x27d90651

    if-eq v3, v4, :cond_3b

    const v4, -0x15ab1843

    if-eq v3, v4, :cond_30

    const v4, 0x261f10d9

    if-eq v3, v4, :cond_25

    goto :goto_46

    :cond_25
    const-string/jumbo v3, "restrict-background-whitelist"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_46

    const/4 v3, 0x1

    goto :goto_47

    :cond_30
    const-string/jumbo v3, "wifi-networks"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_46

    const/4 v3, 0x0

    goto :goto_47

    :cond_3b
    const-string/jumbo v3, "restrict-background-blacklist"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_46

    const/4 v3, 0x2

    goto :goto_47

    :cond_46
    :goto_46
    move v3, v2

    :goto_47
    packed-switch v3, :pswitch_data_74

    .line 152
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: unknown list type \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 153
    return v2

    .line 150
    :pswitch_64
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->listRestrictBackgroundBlacklist()I

    move-result v2

    return v2

    .line 148
    :pswitch_69
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->listRestrictBackgroundWhitelist()I

    move-result v2

    return v2

    .line 146
    :pswitch_6e
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->listWifiNetworks()I

    move-result v2

    return v2

    nop

    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_6e
        :pswitch_69
        :pswitch_64
    .end packed-switch
.end method

.method private runRemove()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 174
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 175
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 176
    .local v1, "type":Ljava/lang/String;
    const/4 v2, -0x1

    if-nez v1, :cond_11

    .line 177
    const-string v3, "Error: didn\'t specify type of data to remove"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 178
    return v2

    .line 180
    :cond_11
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x27d90651

    if-eq v3, v4, :cond_2b

    const v4, 0x261f10d9

    if-eq v3, v4, :cond_20

    goto :goto_36

    :cond_20
    const-string/jumbo v3, "restrict-background-whitelist"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    const/4 v3, 0x0

    goto :goto_37

    :cond_2b
    const-string/jumbo v3, "restrict-background-blacklist"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    const/4 v3, 0x1

    goto :goto_37

    :cond_36
    :goto_36
    move v3, v2

    :goto_37
    packed-switch v3, :pswitch_data_5e

    .line 186
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: unknown remove type \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 187
    return v2

    .line 184
    :pswitch_54
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->removeRestrictBackgroundBlacklist()I

    move-result v2

    return v2

    .line 182
    :pswitch_59
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->removeRestrictBackgroundWhitelist()I

    move-result v2

    return v2

    :pswitch_data_5e
    .packed-switch 0x0
        :pswitch_59
        :pswitch_54
    .end packed-switch
.end method

.method private runSet()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 119
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 120
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, "type":Ljava/lang/String;
    const/4 v2, -0x1

    if-nez v1, :cond_11

    .line 122
    const-string v3, "Error: didn\'t specify type of data to set"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 123
    return v2

    .line 125
    :cond_11
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x3a9b30b7

    if-eq v3, v4, :cond_3b

    const v4, -0x2c87c721

    if-eq v3, v4, :cond_30

    const v4, 0x6e1614bc

    if-eq v3, v4, :cond_25

    goto :goto_46

    :cond_25
    const-string/jumbo v3, "sub-plan-owner"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_46

    const/4 v3, 0x2

    goto :goto_47

    :cond_30
    const-string/jumbo v3, "restrict-background"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_46

    const/4 v3, 0x1

    goto :goto_47

    :cond_3b
    const-string/jumbo v3, "metered-network"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_46

    const/4 v3, 0x0

    goto :goto_47

    :cond_46
    :goto_46
    move v3, v2

    :goto_47
    packed-switch v3, :pswitch_data_74

    .line 133
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: unknown set type \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 134
    return v2

    .line 131
    :pswitch_64
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->setSubPlanOwner()I

    move-result v2

    return v2

    .line 129
    :pswitch_69
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->setRestrictBackground()I

    move-result v2

    return v2

    .line 127
    :pswitch_6e
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->setMeteredWifiNetwork()I

    move-result v2

    return v2

    nop

    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_6e
        :pswitch_69
        :pswitch_64
    .end packed-switch
.end method

.method private setMeteredWifiNetwork()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 304
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 305
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 306
    .local v1, "networkId":Ljava/lang/String;
    const/4 v2, -0x1

    if-nez v1, :cond_11

    .line 307
    const-string v3, "Error: didn\'t specify networkId"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 308
    return v2

    .line 310
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    .line 311
    .local v3, "arg":Ljava/lang/String;
    if-nez v3, :cond_1d

    .line 312
    const-string v4, "Error: didn\'t specify meteredOverride"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 313
    return v2

    .line 315
    :cond_1d
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v1}, Landroid/net/NetworkPolicyManager;->resolveNetworkId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 316
    invoke-static {v3}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->stringToOverride(Ljava/lang/String;)I

    move-result v6

    .line 315
    invoke-virtual {v4, v5, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->setWifiMeteredOverride(Ljava/lang/String;I)V

    .line 317
    return v2
.end method

.method private setRestrictBackground()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 225
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getNextBooleanArg()I

    move-result v0

    .line 226
    .local v0, "enabled":I
    if-gez v0, :cond_7

    .line 227
    return v0

    .line 229
    :cond_7
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

    const/4 v2, 0x0

    if-lez v0, :cond_e

    const/4 v3, 0x1

    goto :goto_f

    :cond_e
    move v3, v2

    :goto_f
    invoke-virtual {v1, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->setRestrictBackground(Z)V

    .line 230
    return v2
.end method

.method private setSubPlanOwner()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 234
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 235
    .local v0, "subId":I
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 236
    .local v1, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->setSubscriptionPlansOwner(ILjava/lang/String;)V

    .line 237
    const/4 v2, 0x0

    return v2
.end method

.method private setUidPolicy(I)I
    .registers 4
    .param p1, "policy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 241
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getUidFromNextArg()I

    move-result v0

    .line 242
    .local v0, "uid":I
    if-gez v0, :cond_7

    .line 243
    return v0

    .line 245
    :cond_7
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v1, v0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicy(II)V

    .line 246
    const/4 v1, 0x0

    return v1
.end method

.method private static stringToOverride(Ljava/lang/String;)I
    .registers 5
    .param p0, "override"    # Ljava/lang/String;

    .line 329
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x36758e

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1b

    const v1, 0x5cb1923

    if-eq v0, v1, :cond_11

    goto :goto_26

    :cond_11
    const-string v0, "false"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    move v0, v3

    goto :goto_27

    :cond_1b
    const-string/jumbo v0, "true"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    move v0, v2

    goto :goto_27

    :cond_26
    :goto_26
    const/4 v0, -0x1

    :goto_27
    packed-switch v0, :pswitch_data_30

    .line 332
    return v2

    .line 331
    :pswitch_2b
    const/4 v0, 0x2

    return v0

    .line 330
    :pswitch_2d
    return v3

    nop

    nop

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_2d
        :pswitch_2b
    .end packed-switch
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 7
    .param p1, "cmd"    # Ljava/lang/String;

    .line 45
    if-nez p1, :cond_7

    .line 46
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 48
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 50
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, -0x1

    :try_start_c
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_84

    goto :goto_49

    :sswitch_14
    const-string/jumbo v2, "list"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    const/4 v2, 0x2

    goto :goto_4a

    :sswitch_1f
    const-string/jumbo v2, "set"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    const/4 v2, 0x1

    goto :goto_4a

    :sswitch_2a
    const-string v2, "get"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    const/4 v2, 0x0

    goto :goto_4a

    :sswitch_34
    const-string v2, "add"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    const/4 v2, 0x3

    goto :goto_4a

    :sswitch_3e
    const-string/jumbo v2, "remove"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    const/4 v2, 0x4

    goto :goto_4a

    :cond_49
    :goto_49
    move v2, v1

    :goto_4a
    packed-switch v2, :pswitch_data_9a

    .line 62
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v2

    goto :goto_6b

    .line 60
    :pswitch_52
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->runRemove()I

    move-result v2

    return v2

    .line 58
    :pswitch_57
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->runAdd()I

    move-result v2

    return v2

    .line 56
    :pswitch_5c
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->runList()I

    move-result v2

    return v2

    .line 54
    :pswitch_61
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->runSet()I

    move-result v2

    return v2

    .line 52
    :pswitch_66
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->runGet()I

    move-result v2
    :try_end_6a
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_6a} :catch_6c

    return v2

    .line 62
    :goto_6b
    return v2

    .line 64
    :catch_6c
    move-exception v2

    .line 65
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 67
    .end local v2    # "e":Landroid/os/RemoteException;
    return v1

    nop

    nop

    :sswitch_data_84
    .sparse-switch
        -0x37b5077c -> :sswitch_3e
        0x178a1 -> :sswitch_34
        0x18f56 -> :sswitch_2a
        0x1bc62 -> :sswitch_1f
        0x32b09e -> :sswitch_14
    .end sparse-switch

    :pswitch_data_9a
    .packed-switch 0x0
        :pswitch_66
        :pswitch_61
        :pswitch_5c
        :pswitch_57
        :pswitch_52
    .end packed-switch
.end method

.method public onHelp()V
    .registers 3

    .line 72
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 73
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string v1, "Network policy manager (netpolicy) commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 74
    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 75
    const-string v1, "    Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 76
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 77
    const-string v1, "  add restrict-background-whitelist UID"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 78
    const-string v1, "    Adds a UID to the whitelist for restrict background usage."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 79
    const-string v1, "  add restrict-background-blacklist UID"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 80
    const-string v1, "    Adds a UID to the blacklist for restrict background usage."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 81
    const-string v1, "  get restrict-background"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 82
    const-string v1, "    Gets the global restrict background usage status."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 83
    const-string v1, "  list wifi-networks [true|false]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 84
    const-string v1, "    Lists all saved wifi networks and whether they are metered or not."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 85
    const-string v1, "    If a boolean argument is passed, filters just the metered (or unmetered)"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 86
    const-string v1, "    networks."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 87
    const-string v1, "  list restrict-background-whitelist"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 88
    const-string v1, "    Lists UIDs that are whitelisted for restrict background usage."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 89
    const-string v1, "  list restrict-background-blacklist"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 90
    const-string v1, "    Lists UIDs that are blacklisted for restrict background usage."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 91
    const-string v1, "  remove restrict-background-whitelist UID"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 92
    const-string v1, "    Removes a UID from the whitelist for restrict background usage."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 93
    const-string v1, "  remove restrict-background-blacklist UID"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 94
    const-string v1, "    Removes a UID from the blacklist for restrict background usage."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 95
    const-string v1, "  set metered-network ID [undefined|true|false]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 96
    const-string v1, "    Toggles whether the given wi-fi network is metered."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 97
    const-string v1, "  set restrict-background BOOLEAN"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 98
    const-string v1, "    Sets the global restrict background usage status."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 99
    const-string v1, "  set sub-plan-owner subId [packageName]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 100
    const-string v1, "    Sets the data plan owner package for subId."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 101
    return-void
.end method
