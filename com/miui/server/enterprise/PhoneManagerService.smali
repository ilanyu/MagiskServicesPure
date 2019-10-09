.class public Lcom/miui/server/enterprise/PhoneManagerService;
.super Lcom/miui/enterprise/IPhoneManager$Stub;
.source "PhoneManagerService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Enterprise-phone"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 20
    invoke-direct {p0}, Lcom/miui/enterprise/IPhoneManager$Stub;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/miui/server/enterprise/PhoneManagerService;->mContext:Landroid/content/Context;

    .line 22
    return-void
.end method

.method private shouldClose(I)Z
    .registers 3
    .param p1, "state"    # I

    .line 53
    if-eqz p1, :cond_8

    const/4 v0, 0x3

    if-ne p1, v0, :cond_6

    goto :goto_8

    :cond_6
    const/4 v0, 0x0

    goto :goto_9

    :cond_8
    :goto_8
    const/4 v0, 0x1

    :goto_9
    return v0
.end method

.method private shouldOpen(I)Z
    .registers 3
    .param p1, "state"    # I

    .line 49
    const/4 v0, 0x2

    if-eq p1, v0, :cond_9

    const/4 v0, 0x4

    if-ne p1, v0, :cond_7

    goto :goto_9

    :cond_7
    const/4 v0, 0x0

    goto :goto_a

    :cond_9
    :goto_9
    const/4 v0, 0x1

    :goto_a
    return v0
.end method


# virtual methods
.method public controlCellular(II)V
    .registers 5
    .param p1, "flag"    # I
    .param p2, "userId"    # I

    .line 38
    iget-object v0, p0, Lcom/miui/server/enterprise/PhoneManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    .line 39
    iget-object v0, p0, Lcom/miui/server/enterprise/PhoneManagerService;->mContext:Landroid/content/Context;

    const-string v1, "ep_cellular_status"

    invoke-static {v0, v1, p1, p2}, Lcom/miui/enterprise/settings/EnterpriseSettings;->putInt(Landroid/content/Context;Ljava/lang/String;II)V

    .line 40
    invoke-direct {p0, p1}, Lcom/miui/server/enterprise/PhoneManagerService;->shouldOpen(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 41
    iget-object v0, p0, Lcom/miui/server/enterprise/PhoneManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 43
    :cond_1c
    invoke-direct {p0, p1}, Lcom/miui/server/enterprise/PhoneManagerService;->shouldClose(I)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 44
    iget-object v0, p0, Lcom/miui/server/enterprise/PhoneManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 46
    :cond_2c
    return-void
.end method

.method public controlPhoneCall(II)V
    .registers 5
    .param p1, "flags"    # I
    .param p2, "userId"    # I

    .line 32
    iget-object v0, p0, Lcom/miui/server/enterprise/PhoneManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    .line 33
    iget-object v0, p0, Lcom/miui/server/enterprise/PhoneManagerService;->mContext:Landroid/content/Context;

    const-string v1, "ep_phone_call_status"

    invoke-static {v0, v1, p1, p2}, Lcom/miui/enterprise/settings/EnterpriseSettings;->putInt(Landroid/content/Context;Ljava/lang/String;II)V

    .line 34
    return-void
.end method

.method public controlSMS(II)V
    .registers 5
    .param p1, "flags"    # I
    .param p2, "userId"    # I

    .line 26
    iget-object v0, p0, Lcom/miui/server/enterprise/PhoneManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    .line 27
    iget-object v0, p0, Lcom/miui/server/enterprise/PhoneManagerService;->mContext:Landroid/content/Context;

    const-string v1, "ep_sms_status"

    invoke-static {v0, v1, p1, p2}, Lcom/miui/enterprise/settings/EnterpriseSettings;->putInt(Landroid/content/Context;Ljava/lang/String;II)V

    .line 28
    return-void
.end method

.method public disableCallForward(Z)V
    .registers 4
    .param p1, "disabled"    # Z

    .line 192
    iget-object v0, p0, Lcom/miui/server/enterprise/PhoneManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    .line 193
    iget-object v0, p0, Lcom/miui/server/enterprise/PhoneManagerService;->mContext:Landroid/content/Context;

    const-string v1, "ep_disable_call_forward"

    invoke-static {v0, v1, p1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 194
    return-void
.end method

.method public disableCallLog(Z)V
    .registers 4
    .param p1, "disable"    # Z

    .line 198
    iget-object v0, p0, Lcom/miui/server/enterprise/PhoneManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    .line 199
    iget-object v0, p0, Lcom/miui/server/enterprise/PhoneManagerService;->mContext:Landroid/content/Context;

    const-string v1, "ep_disable_call_log"

    invoke-static {v0, v1, p1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 200
    return-void
.end method

.method public endCall()V
    .registers 3

    .line 185
    iget-object v0, p0, Lcom/miui/server/enterprise/PhoneManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    .line 186
    const-string v0, "Enterprise-phone"

    const-string v1, "End current call"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-static {}, Lmiui/telephony/TelephonyManagerEx;->getDefault()Lmiui/telephony/TelephonyManagerEx;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/TelephonyManagerEx;->endCall()Z

    .line 188
    return-void
.end method

.method public getAreaCode(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .line 204
    iget-object v0, p0, Lcom/miui/server/enterprise/PhoneManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    .line 205
    invoke-static {p1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/server/enterprise/PhoneManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getLocationAreaCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCallBlackList(I)Ljava/util/List;
    .registers 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lcom/miui/server/enterprise/PhoneManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    .line 160
    iget-object v0, p0, Lcom/miui/server/enterprise/PhoneManagerService;->mContext:Landroid/content/Context;

    const-string v1, "ep_call_black_list"

    .line 161
    invoke-static {v0, v1, p1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 160
    invoke-static {v0}, Lcom/miui/enterprise/settings/EnterpriseSettings;->parseListSettings(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCallContactRestriction(I)I
    .registers 5
    .param p1, "userId"    # I

    .line 179
    iget-object v0, p0, Lcom/miui/server/enterprise/PhoneManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    .line 180
    iget-object v0, p0, Lcom/miui/server/enterprise/PhoneManagerService;->mContext:Landroid/content/Context;

    const-string v1, "ep_call_restriction_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getInt(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public getCallWhiteList(I)Ljava/util/List;
    .registers 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lcom/miui/server/enterprise/PhoneManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    .line 167
    iget-object v0, p0, Lcom/miui/server/enterprise/PhoneManagerService;->mContext:Landroid/content/Context;

    const-string v1, "ep_call_white_list"

    .line 168
    invoke-static {v0, v1, p1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 167
    invoke-static {v0}, Lcom/miui/enterprise/settings/EnterpriseSettings;->parseListSettings(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCellularStatus(I)I
    .registers 5
    .param p1, "userId"    # I

    .line 72
    iget-object v0, p0, Lcom/miui/server/enterprise/PhoneManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    .line 73
    iget-object v0, p0, Lcom/miui/server/enterprise/PhoneManagerService;->mContext:Landroid/content/Context;

    const-string v1, "ep_cellular_status"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getInt(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public getIMEI(I)Ljava/lang/String;
    .registers 3
    .param p1, "slotId"    # I

    .line 79
    iget-object v0, p0, Lcom/miui/server/enterprise/PhoneManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    .line 80
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/telephony/TelephonyManager;->getImeiForSlot(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMeid(I)Ljava/lang/String;
    .registers 3
    .param p1, "slotId"    # I

    .line 210
    iget-object v0, p0, Lcom/miui/server/enterprise/PhoneManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    .line 211
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/telephony/TelephonyManager;->getMeidForSlot(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneCallStatus(I)I
    .registers 5
    .param p1, "userId"    # I

    .line 65
    iget-object v0, p0, Lcom/miui/server/enterprise/PhoneManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    .line 66
    iget-object v0, p0, Lcom/miui/server/enterprise/PhoneManagerService;->mContext:Landroid/content/Context;

    const-string v1, "ep_phone_call_status"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getInt(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public getSMSBlackList(I)Ljava/util/List;
    .registers 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/miui/server/enterprise/PhoneManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    .line 120
    iget-object v0, p0, Lcom/miui/server/enterprise/PhoneManagerService;->mContext:Landroid/content/Context;

    const-string v1, "ep_sms_black_list"

    .line 121
    invoke-static {v0, v1, p1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 120
    invoke-static {v0}, Lcom/miui/enterprise/settings/EnterpriseSettings;->parseListSettings(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSMSContactRestriction(I)I
    .registers 5
    .param p1, "userId"    # I

    .line 139
    iget-object v0, p0, Lcom/miui/server/enterprise/PhoneManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    .line 140
    iget-object v0, p0, Lcom/miui/server/enterprise/PhoneManagerService;->mContext:Landroid/content/Context;

    const-string v1, "ep_sms_restriction_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getInt(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public getSMSStatus(I)I
    .registers 5
    .param p1, "userId"    # I

    .line 58
    iget-object v0, p0, Lcom/miui/server/enterprise/PhoneManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    .line 59
    iget-object v0, p0, Lcom/miui/server/enterprise/PhoneManagerService;->mContext:Landroid/content/Context;

    const-string v1, "ep_sms_status"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getInt(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public getSMSWhiteList(I)Ljava/util/List;
    .registers 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/miui/server/enterprise/PhoneManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    .line 127
    iget-object v0, p0, Lcom/miui/server/enterprise/PhoneManagerService;->mContext:Landroid/content/Context;

    const-string v1, "ep_sms_white_list"

    .line 128
    invoke-static {v0, v1, p1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 127
    invoke-static {v0}, Lcom/miui/enterprise/settings/EnterpriseSettings;->parseListSettings(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isAutoRecordPhoneCall(I)Z
    .registers 5
    .param p1, "userId"    # I

    .line 99
    iget-object v0, p0, Lcom/miui/server/enterprise/PhoneManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    .line 100
    iget-object v0, p0, Lcom/miui/server/enterprise/PhoneManagerService;->mContext:Landroid/content/Context;

    const-string v1, "ep_force_auto_call_record"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getInt(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    goto :goto_13

    :cond_12
    move v1, v2

    :goto_13
    return v1
.end method

.method public setCallBlackList(Ljava/util/List;I)V
    .registers 6
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 145
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/miui/server/enterprise/PhoneManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    .line 146
    iget-object v0, p0, Lcom/miui/server/enterprise/PhoneManagerService;->mContext:Landroid/content/Context;

    const-string v1, "ep_call_black_list"

    .line 147
    invoke-static {p1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->generateListSettings(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 146
    invoke-static {v0, v1, v2, p2}, Lcom/miui/enterprise/settings/EnterpriseSettings;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 148
    return-void
.end method

.method public setCallContactRestriction(II)V
    .registers 5
    .param p1, "mode"    # I
    .param p2, "userId"    # I

    .line 173
    iget-object v0, p0, Lcom/miui/server/enterprise/PhoneManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    .line 174
    iget-object v0, p0, Lcom/miui/server/enterprise/PhoneManagerService;->mContext:Landroid/content/Context;

    const-string v1, "ep_call_restriction_mode"

    invoke-static {v0, v1, p1, p2}, Lcom/miui/enterprise/settings/EnterpriseSettings;->putInt(Landroid/content/Context;Ljava/lang/String;II)V

    .line 175
    return-void
.end method

.method public setCallWhiteList(Ljava/util/List;I)V
    .registers 6
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 152
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/miui/server/enterprise/PhoneManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    .line 153
    iget-object v0, p0, Lcom/miui/server/enterprise/PhoneManagerService;->mContext:Landroid/content/Context;

    const-string v1, "ep_call_white_list"

    .line 154
    invoke-static {p1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->generateListSettings(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 153
    invoke-static {v0, v1, v2, p2}, Lcom/miui/enterprise/settings/EnterpriseSettings;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 155
    return-void
.end method

.method public setIccCardActivate(IZ)V
    .registers 4
    .param p1, "slotId"    # I
    .param p2, "isActive"    # Z

    .line 216
    iget-object v0, p0, Lcom/miui/server/enterprise/PhoneManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    .line 217
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lmiui/telephony/TelephonyManager;->setIccCardActivate(IZ)V

    .line 218
    return-void
.end method

.method public setPhoneCallAutoRecord(ZI)V
    .registers 5
    .param p1, "isAutoRecord"    # Z
    .param p2, "userId"    # I

    .line 85
    iget-object v0, p0, Lcom/miui/server/enterprise/PhoneManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    .line 86
    iget-object v0, p0, Lcom/miui/server/enterprise/PhoneManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "button_auto_record_call"

    invoke-static {v0, v1, p1, p2}, Landroid/provider/MiuiSettings$System;->putBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    .line 88
    iget-object v0, p0, Lcom/miui/server/enterprise/PhoneManagerService;->mContext:Landroid/content/Context;

    const-string v1, "ep_force_auto_call_record"

    invoke-static {v0, v1, p1, p2}, Lcom/miui/enterprise/settings/EnterpriseSettings;->putInt(Landroid/content/Context;Ljava/lang/String;II)V

    .line 89
    return-void
.end method

.method public setPhoneCallAutoRecordDir(Ljava/lang/String;)V
    .registers 4
    .param p1, "dir"    # Ljava/lang/String;

    .line 93
    iget-object v0, p0, Lcom/miui/server/enterprise/PhoneManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    .line 94
    iget-object v0, p0, Lcom/miui/server/enterprise/PhoneManagerService;->mContext:Landroid/content/Context;

    const-string v1, "ep_force_auto_call_record_dir"

    invoke-static {v0, v1, p1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public setSMSBlackList(Ljava/util/List;I)V
    .registers 6
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 105
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/miui/server/enterprise/PhoneManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    .line 106
    iget-object v0, p0, Lcom/miui/server/enterprise/PhoneManagerService;->mContext:Landroid/content/Context;

    const-string v1, "ep_sms_black_list"

    .line 107
    invoke-static {p1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->generateListSettings(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 106
    invoke-static {v0, v1, v2, p2}, Lcom/miui/enterprise/settings/EnterpriseSettings;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 108
    return-void
.end method

.method public setSMSContactRestriction(II)V
    .registers 5
    .param p1, "mode"    # I
    .param p2, "userId"    # I

    .line 133
    iget-object v0, p0, Lcom/miui/server/enterprise/PhoneManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    .line 134
    iget-object v0, p0, Lcom/miui/server/enterprise/PhoneManagerService;->mContext:Landroid/content/Context;

    const-string v1, "ep_sms_restriction_mode"

    invoke-static {v0, v1, p1, p2}, Lcom/miui/enterprise/settings/EnterpriseSettings;->putInt(Landroid/content/Context;Ljava/lang/String;II)V

    .line 135
    return-void
.end method

.method public setSMSWhiteList(Ljava/util/List;I)V
    .registers 6
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 112
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/miui/server/enterprise/PhoneManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    .line 113
    iget-object v0, p0, Lcom/miui/server/enterprise/PhoneManagerService;->mContext:Landroid/content/Context;

    const-string v1, "ep_sms_white_list"

    .line 114
    invoke-static {p1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->generateListSettings(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 113
    invoke-static {v0, v1, v2, p2}, Lcom/miui/enterprise/settings/EnterpriseSettings;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 115
    return-void
.end method
