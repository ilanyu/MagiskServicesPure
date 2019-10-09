.class public final Lcom/android/server/notification/NotificationManagerService$DumpFilter;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DumpFilter"
.end annotation


# instance fields
.field public criticalPriority:Z

.field public filtered:Z

.field public normalPriority:Z

.field public pkgFilter:Ljava/lang/String;

.field public proto:Z

.field public redact:Z

.field public since:J

.field public stats:Z

.field public zen:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 7006
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7007
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    .line 7012
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->redact:Z

    .line 7013
    iput-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->proto:Z

    .line 7014
    iput-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->criticalPriority:Z

    .line 7015
    iput-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->normalPriority:Z

    return-void
.end method

.method public static parseFromArguments([Ljava/lang/String;)Lcom/android/server/notification/NotificationManagerService$DumpFilter;
    .registers 10
    .param p0, "args"    # [Ljava/lang/String;

    .line 7019
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    invoke-direct {v0}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;-><init>()V

    .line 7020
    .local v0, "filter":Lcom/android/server/notification/NotificationManagerService$DumpFilter;
    const/4 v1, 0x0

    move v2, v1

    .line 7020
    .local v2, "ai":I
    :goto_7
    array-length v3, p0

    if-ge v2, v3, :cond_e1

    .line 7021
    aget-object v3, p0, v2

    .line 7022
    .local v3, "a":Ljava/lang/String;
    const-string v4, "--proto"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_19

    .line 7023
    iput-boolean v5, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->proto:Z

    goto/16 :goto_de

    .line 7024
    :cond_19
    const-string v4, "--noredact"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_dc

    const-string v4, "--reveal"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    goto/16 :goto_dc

    .line 7026
    :cond_2b
    const-string/jumbo v4, "p"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_bb

    const-string/jumbo v4, "pkg"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_bb

    const-string v4, "--package"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_47

    goto/16 :goto_bb

    .line 7036
    :cond_47
    const-string v4, "--zen"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b6

    const-string/jumbo v4, "zen"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_59

    goto :goto_b6

    .line 7039
    :cond_59
    const-string v4, "--stats"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_79

    .line 7040
    iput-boolean v5, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->stats:Z

    .line 7041
    array-length v4, p0

    sub-int/2addr v4, v5

    if-ge v2, v4, :cond_73

    .line 7042
    add-int/lit8 v2, v2, 0x1

    .line 7043
    aget-object v4, p0, v2

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->since:J

    goto/16 :goto_de

    .line 7045
    :cond_73
    const-wide/16 v6, 0x0

    iput-wide v6, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->since:J

    goto/16 :goto_de

    .line 7047
    :cond_79
    const-string v4, "--dump-priority"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_de

    .line 7051
    array-length v4, p0

    sub-int/2addr v4, v5

    if-ge v2, v4, :cond_de

    .line 7052
    add-int/lit8 v2, v2, 0x1

    .line 7053
    aget-object v4, p0, v2

    const/4 v6, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v7

    const v8, -0x76664f19    # -3.699977E-33f

    if-eq v7, v8, :cond_a3

    const v8, -0x5cfe9861

    if-eq v7, v8, :cond_99

    goto :goto_ac

    :cond_99
    const-string v7, "CRITICAL"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ac

    move v6, v1

    goto :goto_ac

    :cond_a3
    const-string v7, "NORMAL"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ac

    move v6, v5

    :cond_ac
    :goto_ac
    packed-switch v6, :pswitch_data_e4

    .end local v3    # "a":Ljava/lang/String;
    goto :goto_de

    .line 7058
    .restart local v3    # "a":Ljava/lang/String;
    :pswitch_b0
    iput-boolean v5, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->normalPriority:Z

    .line 7058
    .end local v3    # "a":Ljava/lang/String;
    goto :goto_de

    .line 7055
    .restart local v3    # "a":Ljava/lang/String;
    :pswitch_b3
    iput-boolean v5, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->criticalPriority:Z

    .line 7056
    goto :goto_de

    .line 7037
    :cond_b6
    :goto_b6
    iput-boolean v5, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    .line 7038
    iput-boolean v5, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->zen:Z

    goto :goto_de

    .line 7027
    :cond_bb
    :goto_bb
    array-length v4, p0

    sub-int/2addr v4, v5

    if-ge v2, v4, :cond_de

    .line 7028
    add-int/lit8 v2, v2, 0x1

    .line 7029
    aget-object v4, p0, v2

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->pkgFilter:Ljava/lang/String;

    .line 7030
    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->pkgFilter:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_d9

    .line 7031
    const/4 v4, 0x0

    iput-object v4, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->pkgFilter:Ljava/lang/String;

    goto :goto_de

    .line 7033
    :cond_d9
    iput-boolean v5, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    goto :goto_de

    .line 7025
    :cond_dc
    :goto_dc
    iput-boolean v1, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->redact:Z

    .line 7020
    .end local v3    # "a":Ljava/lang/String;
    :cond_de
    :goto_de
    add-int/2addr v2, v5

    goto/16 :goto_7

    .line 7064
    .end local v2    # "ai":I
    :cond_e1
    return-object v0

    nop

    nop

    :pswitch_data_e4
    .packed-switch 0x0
        :pswitch_b3
        :pswitch_b0
    .end packed-switch
.end method


# virtual methods
.method public matches(Landroid/content/ComponentName;)Z
    .registers 4
    .param p1, "component"    # Landroid/content/ComponentName;

    .line 7074
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    .line 7075
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->zen:Z

    if-eqz v0, :cond_b

    :goto_a
    goto :goto_19

    :cond_b
    if-eqz p1, :cond_18

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_a

    :cond_18
    const/4 v1, 0x0

    :goto_19
    return v1
.end method

.method public matches(Landroid/service/notification/StatusBarNotification;)Z
    .registers 4
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .line 7068
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    .line 7069
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->zen:Z

    if-eqz v0, :cond_b

    goto :goto_23

    .line 7070
    :cond_b
    if-eqz p1, :cond_22

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_21

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    :cond_21
    goto :goto_23

    :cond_22
    const/4 v1, 0x0

    .line 7069
    :goto_23
    return v1
.end method

.method public matches(Ljava/lang/String;)Z
    .registers 5
    .param p1, "pkg"    # Ljava/lang/String;

    .line 7079
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    .line 7080
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->zen:Z

    if-eqz v0, :cond_b

    :goto_a
    goto :goto_1b

    :cond_b
    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->pkgFilter:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_a

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 7085
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->stats:Z

    if-eqz v0, :cond_8

    const-string/jumbo v0, "stats"

    goto :goto_26

    :cond_8
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->zen:Z

    if-eqz v0, :cond_10

    const-string/jumbo v0, "zen"

    goto :goto_26

    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->pkgFilter:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_26
    return-object v0
.end method
