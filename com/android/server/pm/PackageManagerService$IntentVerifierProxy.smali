.class Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Lcom/android/server/pm/PackageManagerService$IntentFilterVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IntentVerifierProxy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/server/pm/PackageManagerService$IntentFilterVerifier<",
        "Landroid/content/pm/PackageParser$ActivityIntentInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentIntentFilterVerifications:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIntentFilterVerifierComponent:Landroid/content/ComponentName;

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;Landroid/content/Context;Landroid/content/ComponentName;)V
    .registers 4
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "verifierComponent"    # Landroid/content/ComponentName;

    .line 1063
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1061
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->mCurrentIntentFilterVerifications:Ljava/util/ArrayList;

    .line 1064
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->mContext:Landroid/content/Context;

    .line 1065
    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->mIntentFilterVerifierComponent:Landroid/content/ComponentName;

    .line 1066
    return-void
.end method

.method private createDomainVerificationState(IIILjava/lang/String;)Lcom/android/server/pm/IntentFilterVerificationState;
    .registers 9
    .param p1, "verifierUid"    # I
    .param p2, "userId"    # I
    .param p3, "verificationId"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .line 1233
    new-instance v0, Lcom/android/server/pm/IntentFilterVerificationState;

    invoke-direct {v0, p1, p2, p4}, Lcom/android/server/pm/IntentFilterVerificationState;-><init>(IILjava/lang/String;)V

    .line 1235
    .local v0, "ivs":Lcom/android/server/pm/IntentFilterVerificationState;
    invoke-virtual {v0}, Lcom/android/server/pm/IntentFilterVerificationState;->setPendingState()V

    .line 1236
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 1237
    :try_start_d
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mIntentFilterVerificationStates:Landroid/util/SparseArray;

    invoke-virtual {v2, p3, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1238
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->mCurrentIntentFilterVerifications:Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1239
    monitor-exit v1

    .line 1240
    return-object v0

    .line 1239
    :catchall_1f
    move-exception v2

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_d .. :try_end_21} :catchall_1f

    throw v2
.end method

.method private getDefaultScheme()Ljava/lang/String;
    .registers 2

    .line 1069
    const-string v0, "https"

    return-object v0
.end method

.method private sendVerificationRequest(ILcom/android/server/pm/IntentFilterVerificationState;)V
    .registers 13
    .param p1, "verificationId"    # I
    .param p2, "ivs"    # Lcom/android/server/pm/IntentFilterVerificationState;

    .line 1102
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INTENT_FILTER_NEEDS_VERIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1103
    .local v0, "verificationIntent":Landroid/content/Intent;
    const-string v1, "android.content.pm.extra.INTENT_FILTER_VERIFICATION_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1106
    const-string v1, "android.content.pm.extra.INTENT_FILTER_VERIFICATION_URI_SCHEME"

    .line 1108
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->getDefaultScheme()Ljava/lang/String;

    move-result-object v2

    .line 1106
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1109
    const-string v1, "android.content.pm.extra.INTENT_FILTER_VERIFICATION_HOSTS"

    .line 1111
    invoke-virtual {p2}, Lcom/android/server/pm/IntentFilterVerificationState;->getHostsString()Ljava/lang/String;

    move-result-object v2

    .line 1109
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1112
    const-string v1, "android.content.pm.extra.INTENT_FILTER_VERIFICATION_PACKAGE_NAME"

    .line 1114
    invoke-virtual {p2}, Lcom/android/server/pm/IntentFilterVerificationState;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1112
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1115
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->mIntentFilterVerifierComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1116
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1118
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->this$0:Lcom/android/server/pm/PackageManagerService;

    # invokes: Lcom/android/server/pm/PackageManagerService;->getDeviceIdleController()Lcom/android/server/DeviceIdleController$LocalService;
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->access$200(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/DeviceIdleController$LocalService;

    move-result-object v1

    .line 1119
    .local v1, "idleController":Lcom/android/server/DeviceIdleController$LocalService;
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->mIntentFilterVerifierComponent:Landroid/content/ComponentName;

    .line 1120
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->this$0:Lcom/android/server/pm/PackageManagerService;

    # invokes: Lcom/android/server/pm/PackageManagerService;->getVerificationTimeout()J
    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->access$300(Lcom/android/server/pm/PackageManagerService;)J

    move-result-wide v5

    const-string v9, "intent filter verifier"

    .line 1119
    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v2, v1

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/DeviceIdleController$LocalService;->addPowerSaveTempWhitelistApp(ILjava/lang/String;JIZLjava/lang/String;)V

    .line 1123
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1126
    return-void
.end method


# virtual methods
.method public bridge synthetic addOneIntentFilterVerification(IIILandroid/content/IntentFilter;Ljava/lang/String;)Z
    .registers 12

    .line 1058
    move-object v4, p4

    check-cast v4, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->addOneIntentFilterVerification(IIILandroid/content/pm/PackageParser$ActivityIntentInfo;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public addOneIntentFilterVerification(IIILandroid/content/pm/PackageParser$ActivityIntentInfo;Ljava/lang/String;)Z
    .registers 8
    .param p1, "verifierUid"    # I
    .param p2, "userId"    # I
    .param p3, "verificationId"    # I
    .param p4, "filter"    # Landroid/content/pm/PackageParser$ActivityIntentInfo;
    .param p5, "packageName"    # Ljava/lang/String;

    .line 1216
    # invokes: Lcom/android/server/pm/PackageManagerService;->hasValidDomains(Landroid/content/pm/PackageParser$ActivityIntentInfo;)Z
    invoke-static {p4}, Lcom/android/server/pm/PackageManagerService;->access$400(Landroid/content/pm/PackageParser$ActivityIntentInfo;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1217
    const/4 v0, 0x0

    return v0

    .line 1219
    :cond_8
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mIntentFilterVerificationStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/IntentFilterVerificationState;

    .line 1220
    .local v0, "ivs":Lcom/android/server/pm/IntentFilterVerificationState;
    if-nez v0, :cond_18

    .line 1221
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->createDomainVerificationState(IIILjava/lang/String;)Lcom/android/server/pm/IntentFilterVerificationState;

    move-result-object v0

    .line 1227
    :cond_18
    invoke-virtual {v0, p4}, Lcom/android/server/pm/IntentFilterVerificationState;->addFilter(Landroid/content/pm/PackageParser$ActivityIntentInfo;)V

    .line 1228
    const/4 v1, 0x1

    return v1
.end method

.method public receiveVerificationResponse(I)V
    .registers 14
    .param p1, "verificationId"    # I

    .line 1129
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mIntentFilterVerificationStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/IntentFilterVerificationState;

    .line 1131
    .local v0, "ivs":Lcom/android/server/pm/IntentFilterVerificationState;
    invoke-virtual {v0}, Lcom/android/server/pm/IntentFilterVerificationState;->isVerified()Z

    move-result v1

    .line 1133
    .local v1, "verified":Z
    invoke-virtual {v0}, Lcom/android/server/pm/IntentFilterVerificationState;->getFilters()Ljava/util/ArrayList;

    move-result-object v2

    .line 1134
    .local v2, "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1139
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "n":I
    :goto_17
    if-ge v4, v3, :cond_25

    .line 1140
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .line 1141
    .local v5, "filter":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    invoke-virtual {v5, v1}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->setVerified(Z)V

    .line 1139
    .end local v5    # "filter":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    .line 1148
    .end local v4    # "n":I
    :cond_25
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mIntentFilterVerificationStates:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1150
    invoke-virtual {v0}, Lcom/android/server/pm/IntentFilterVerificationState;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1151
    .local v4, "packageName":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1153
    .local v5, "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v6

    .line 1154
    :try_start_36
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v7, v4}, Lcom/android/server/pm/Settings;->getIntentFilterVerificationLPr(Ljava/lang/String;)Landroid/content/pm/IntentFilterVerificationInfo;

    move-result-object v7

    move-object v5, v7

    .line 1155
    monitor-exit v6
    :try_end_40
    .catchall {:try_start_36 .. :try_end_40} :catchall_ab

    .line 1156
    if-nez v5, :cond_61

    .line 1157
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IntentFilterVerificationInfo not found for verificationId:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " packageName:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    return-void

    .line 1165
    :cond_61
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v6, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v7

    .line 1166
    if-eqz v1, :cond_6f

    .line 1167
    const/4 v6, 0x2

    :try_start_69
    invoke-virtual {v5, v6}, Landroid/content/pm/IntentFilterVerificationInfo;->setStatus(I)V

    goto :goto_73

    .line 1210
    :catchall_6d
    move-exception v6

    goto :goto_a9

    .line 1169
    :cond_6f
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/content/pm/IntentFilterVerificationInfo;->setStatus(I)V

    .line 1171
    :goto_73
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerService;->scheduleWriteSettingsLocked()V

    .line 1173
    invoke-virtual {v0}, Lcom/android/server/pm/IntentFilterVerificationState;->getUserId()I

    move-result v6

    .line 1174
    .local v6, "userId":I
    const/4 v8, -0x1

    if-eq v6, v8, :cond_a7

    .line 1175
    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 1176
    invoke-virtual {v8, v4, v6}, Lcom/android/server/pm/Settings;->getIntentFilterVerificationStatusLPr(Ljava/lang/String;I)I

    move-result v8

    .line 1178
    .local v8, "userStatus":I
    const/4 v9, 0x0

    .line 1179
    .local v9, "updatedStatus":I
    const/4 v10, 0x0

    .line 1183
    .local v10, "needUpdate":Z
    packed-switch v8, :pswitch_data_ae

    goto :goto_99

    .line 1194
    :pswitch_8d
    if-eqz v1, :cond_99

    .line 1195
    const/4 v9, 0x2

    .line 1196
    const/4 v10, 0x1

    goto :goto_99

    .line 1185
    :pswitch_92
    if-eqz v1, :cond_96

    .line 1186
    const/4 v9, 0x2

    goto :goto_97

    .line 1188
    :cond_96
    const/4 v9, 0x1

    .line 1190
    :goto_97
    const/4 v10, 0x1

    .line 1191
    nop

    .line 1204
    :cond_99
    :goto_99
    if-eqz v10, :cond_a7

    .line 1205
    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v11, v11, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v11, v4, v9, v6}, Lcom/android/server/pm/Settings;->updateIntentFilterVerificationStatusLPw(Ljava/lang/String;II)Z

    .line 1207
    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v11, v6}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageRestrictionsLocked(I)V

    .line 1210
    .end local v6    # "userId":I
    .end local v8    # "userStatus":I
    .end local v9    # "updatedStatus":I
    .end local v10    # "needUpdate":Z
    :cond_a7
    monitor-exit v7

    .line 1211
    return-void

    .line 1210
    :goto_a9
    monitor-exit v7
    :try_end_aa
    .catchall {:try_start_69 .. :try_end_aa} :catchall_6d

    throw v6

    .line 1155
    :catchall_ab
    move-exception v7

    :try_start_ac
    monitor-exit v6
    :try_end_ad
    .catchall {:try_start_ac .. :try_end_ad} :catchall_ab

    throw v7

    :pswitch_data_ae
    .packed-switch 0x0
        :pswitch_92
        :pswitch_8d
    .end packed-switch
.end method

.method public startVerifications(I)V
    .registers 14
    .param p1, "userId"    # I

    .line 1075
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->mCurrentIntentFilterVerifications:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1076
    .local v0, "count":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "n":I
    :goto_8
    if-ge v2, v0, :cond_62

    .line 1077
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->mCurrentIntentFilterVerifications:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1078
    .local v3, "verificationId":I
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mIntentFilterVerificationStates:Landroid/util/SparseArray;

    .line 1079
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/IntentFilterVerificationState;

    .line 1081
    .local v4, "ivs":Lcom/android/server/pm/IntentFilterVerificationState;
    invoke-virtual {v4}, Lcom/android/server/pm/IntentFilterVerificationState;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 1083
    .local v5, "packageName":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/android/server/pm/IntentFilterVerificationState;->getFilters()Ljava/util/ArrayList;

    move-result-object v6

    .line 1084
    .local v6, "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 1085
    .local v7, "filterCount":I
    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    .line 1086
    .local v8, "domainsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move v9, v1

    .local v9, "m":I
    :goto_32
    if-ge v9, v7, :cond_44

    .line 1087
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .line 1088
    .local v10, "filter":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    invoke-virtual {v10}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->getHostsList()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 1086
    .end local v10    # "filter":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    add-int/lit8 v9, v9, 0x1

    goto :goto_32

    .line 1090
    .end local v9    # "m":I
    :cond_44
    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, v9, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v9

    .line 1091
    :try_start_49
    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v10, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v10, v5, v8}, Lcom/android/server/pm/Settings;->createIntentFilterVerificationIfNeededLPw(Ljava/lang/String;Landroid/util/ArraySet;)Landroid/content/pm/IntentFilterVerificationInfo;

    move-result-object v10

    if-eqz v10, :cond_58

    .line 1093
    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v10}, Lcom/android/server/pm/PackageManagerService;->scheduleWriteSettingsLocked()V

    .line 1095
    :cond_58
    monitor-exit v9
    :try_end_59
    .catchall {:try_start_49 .. :try_end_59} :catchall_5f

    .line 1096
    invoke-direct {p0, v3, v4}, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->sendVerificationRequest(ILcom/android/server/pm/IntentFilterVerificationState;)V

    .line 1076
    .end local v3    # "verificationId":I
    .end local v4    # "ivs":Lcom/android/server/pm/IntentFilterVerificationState;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    .end local v7    # "filterCount":I
    .end local v8    # "domainsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1095
    .restart local v3    # "verificationId":I
    .restart local v4    # "ivs":Lcom/android/server/pm/IntentFilterVerificationState;
    .restart local v5    # "packageName":Ljava/lang/String;
    .restart local v6    # "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    .restart local v7    # "filterCount":I
    .restart local v8    # "domainsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_5f
    move-exception v1

    :try_start_60
    monitor-exit v9
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_5f

    throw v1

    .line 1098
    .end local v2    # "n":I
    .end local v3    # "verificationId":I
    .end local v4    # "ivs":Lcom/android/server/pm/IntentFilterVerificationState;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    .end local v7    # "filterCount":I
    .end local v8    # "domainsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_62
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->mCurrentIntentFilterVerifications:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1099
    return-void
.end method
