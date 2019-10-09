.class public abstract Lcom/android/server/pm/InstantAppResolver;
.super Ljava/lang/Object;
.source "InstantAppResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/InstantAppResolver$ResolutionStatus;
    }
.end annotation


# static fields
.field private static final DEBUG_INSTANT:Z

.field private static final RESOLUTION_BIND_TIMEOUT:I = 0x2

.field private static final RESOLUTION_CALL_TIMEOUT:I = 0x3

.field private static final RESOLUTION_FAILURE:I = 0x1

.field private static final RESOLUTION_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "PackageManager"

.field private static sMetricsLogger:Lcom/android/internal/logging/MetricsLogger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 70
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/server/pm/InstantAppResolver;->DEBUG_INSTANT:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/util/List;Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;Ljava/lang/String;)Landroid/content/pm/AuxiliaryResolveInfo;
    .registers 8
    .param p0, "x0"    # Ljava/util/List;
    .param p1, "x1"    # Landroid/content/Intent;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;
    .param p6, "x6"    # Ljava/lang/String;

    .line 69
    invoke-static/range {p0 .. p6}, Lcom/android/server/pm/InstantAppResolver;->filterInstantAppIntent(Ljava/util/List;Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;Ljava/lang/String;)Landroid/content/pm/AuxiliaryResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(IJLjava/lang/String;I)V
    .registers 5
    .param p0, "x0"    # I
    .param p1, "x1"    # J
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # I

    .line 69
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/pm/InstantAppResolver;->logMetrics(IJLjava/lang/String;I)V

    return-void
.end method

.method public static buildEphemeralInstallerIntent(Landroid/content/Intent;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILandroid/content/ComponentName;Ljava/lang/String;ZLjava/util/List;)Landroid/content/Intent;
    .registers 38
    .param p0, "origIntent"    # Landroid/content/Intent;
    .param p1, "sanitizedIntent"    # Landroid/content/Intent;
    .param p2, "failureIntent"    # Landroid/content/Intent;
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "verificationBundle"    # Landroid/os/Bundle;
    .param p5, "resolvedType"    # Ljava/lang/String;
    .param p6, "userId"    # I
    .param p7, "installFailureActivity"    # Landroid/content/ComponentName;
    .param p8, "token"    # Ljava/lang/String;
    .param p9, "needsPhaseTwo"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/content/Intent;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "I",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .local p10, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p4

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    .line 262
    move-object/from16 v6, p10

    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getFlags()I

    move-result v7

    .line 263
    .local v7, "flags":I
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    move-object v8, v0

    .line 264
    .local v8, "intent":Landroid/content/Intent;
    const/high16 v0, 0x40000000    # 2.0f

    or-int/2addr v0, v7

    const/high16 v9, 0x800000

    or-int/2addr v0, v9

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 267
    if-eqz v5, :cond_29

    .line 269
    const-string v0, "android.intent.extra.EPHEMERAL_TOKEN"

    invoke-virtual {v8, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 270
    const-string v0, "android.intent.extra.INSTANT_APP_TOKEN"

    invoke-virtual {v8, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 272
    :cond_29
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_49

    .line 274
    const-string v0, "android.intent.extra.EPHEMERAL_HOSTNAME"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 275
    const-string v0, "android.intent.extra.INSTANT_APP_HOSTNAME"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 277
    :cond_49
    const-string v0, "android.intent.extra.INSTANT_APP_ACTION"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    const-string v0, "android.intent.extra.INTENT"

    move-object/from16 v9, p1

    invoke-virtual {v8, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 280
    if-eqz p9, :cond_64

    .line 281
    const-string v0, "android.intent.action.RESOLVE_INSTANT_APP_PACKAGE"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 363
    move-object/from16 v12, p3

    goto/16 :goto_18e

    .line 284
    :cond_64
    const/4 v10, 0x0

    const/4 v11, 0x1

    if-nez p2, :cond_6a

    if-eqz v4, :cond_c7

    .line 288
    :cond_6a
    if-eqz v4, :cond_91

    .line 289
    :try_start_6c
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 290
    .local v0, "onFailureIntent":Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 291
    if-eqz v6, :cond_89

    invoke-interface/range {p10 .. p10}, Ljava/util/List;->size()I

    move-result v12

    if-ne v12, v11, :cond_89

    .line 292
    const-string v12, "android.intent.extra.SPLIT_NAME"

    .line 293
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;

    iget-object v13, v13, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;->splitName:Ljava/lang/String;

    .line 292
    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 295
    :cond_89
    const-string v12, "android.intent.extra.INTENT"

    invoke-virtual {v0, v12, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_93

    .line 313
    .end local v0    # "onFailureIntent":Landroid/content/Intent;
    :catch_8f
    move-exception v0

    goto :goto_c7

    .line 297
    :cond_91
    move-object/from16 v0, p2

    .line 299
    .restart local v0    # "onFailureIntent":Landroid/content/Intent;
    :goto_93
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v12

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    new-array v13, v11, [Landroid/content/Intent;

    aput-object v0, v13, v10

    move-object/from16 v24, v13

    new-array v13, v11, [Ljava/lang/String;

    aput-object p5, v13, v10

    const/high16 v20, 0x54000000

    const/16 v21, 0x0

    .line 300
    move-object/from16 v19, v13

    move-object/from16 v18, v24

    const/4 v13, 0x2

    move-object/from16 v14, p3

    move/from16 v22, p6

    invoke-interface/range {v12 .. v22}, Landroid/app/IActivityManager;->getIntentSender(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;

    move-result-object v12

    .line 309
    .local v12, "failureIntentTarget":Landroid/content/IIntentSender;
    new-instance v13, Landroid/content/IntentSender;

    invoke-direct {v13, v12}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    .line 311
    .local v13, "failureSender":Landroid/content/IntentSender;
    const-string v10, "android.intent.extra.EPHEMERAL_FAILURE"

    invoke-virtual {v8, v10, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 312
    const-string v10, "android.intent.extra.INSTANT_APP_FAILURE"

    invoke-virtual {v8, v10, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_c6
    .catch Landroid/os/RemoteException; {:try_start_6c .. :try_end_c6} :catch_8f

    .line 313
    .end local v0    # "onFailureIntent":Landroid/content/Intent;
    .end local v12    # "failureIntentTarget":Landroid/content/IIntentSender;
    .end local v13    # "failureSender":Landroid/content/IntentSender;
    nop

    .line 317
    :cond_c7
    :goto_c7
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v10, v0

    .line 318
    .local v10, "successIntent":Landroid/content/Intent;
    invoke-virtual {v10, v5}, Landroid/content/Intent;->setLaunchToken(Ljava/lang/String;)V

    .line 320
    :try_start_d0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v12

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    new-array v0, v11, [Landroid/content/Intent;
    :try_end_db
    .catch Landroid/os/RemoteException; {:try_start_d0 .. :try_end_db} :catch_106

    const/16 v23, 0x0

    :try_start_dd
    aput-object v10, v0, v23

    new-array v13, v11, [Ljava/lang/String;

    aput-object p5, v13, v23

    const/high16 v20, 0x54000000

    const/16 v21, 0x0

    .line 321
    move-object/from16 v19, v13

    const/4 v13, 0x2

    move-object/from16 v14, p3

    move-object/from16 v18, v0

    move/from16 v22, p6

    invoke-interface/range {v12 .. v22}, Landroid/app/IActivityManager;->getIntentSender(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;

    move-result-object v0

    .line 329
    .local v0, "successIntentTarget":Landroid/content/IIntentSender;
    new-instance v12, Landroid/content/IntentSender;

    invoke-direct {v12, v0}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    .line 331
    .local v12, "successSender":Landroid/content/IntentSender;
    const-string v13, "android.intent.extra.EPHEMERAL_SUCCESS"

    invoke-virtual {v8, v13, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 332
    const-string v13, "android.intent.extra.INSTANT_APP_SUCCESS"

    invoke-virtual {v8, v13, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_103
    .catch Landroid/os/RemoteException; {:try_start_dd .. :try_end_103} :catch_104

    .line 333
    .end local v0    # "successIntentTarget":Landroid/content/IIntentSender;
    .end local v12    # "successSender":Landroid/content/IntentSender;
    goto :goto_109

    :catch_104
    move-exception v0

    goto :goto_109

    :catch_106
    move-exception v0

    const/16 v23, 0x0

    .line 334
    :goto_109
    if-eqz v2, :cond_110

    .line 335
    const-string v0, "android.intent.extra.VERIFICATION_BUNDLE"

    invoke-virtual {v8, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 337
    :cond_110
    const-string v0, "android.intent.extra.CALLING_PACKAGE"

    move-object/from16 v12, p3

    invoke-virtual {v8, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 339
    if-eqz v6, :cond_189

    .line 340
    invoke-interface/range {p10 .. p10}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/os/Bundle;

    .line 341
    .local v0, "resolvableFilters":[Landroid/os/Bundle;
    const/4 v13, 0x0

    .local v13, "i":I
    invoke-interface/range {p10 .. p10}, Ljava/util/List;->size()I

    move-result v14

    .local v14, "max":I
    :goto_124
    move/from16 v25, v14

    .end local v14    # "max":I
    .local v25, "max":I
    move/from16 v11, v25

    if-ge v13, v11, :cond_184

    .line 342
    .end local v25    # "max":I
    .local v11, "max":I
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 343
    .local v1, "resolvableFilter":Landroid/os/Bundle;
    invoke-interface {v6, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    move-object v2, v14

    check-cast v2, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;

    .line 344
    .local v2, "filter":Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;
    const-string v3, "android.intent.extra.UNKNOWN_INSTANT_APP"

    iget-object v4, v2, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;->resolveInfo:Landroid/content/pm/InstantAppResolveInfo;

    if-eqz v4, :cond_146

    iget-object v4, v2, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;->resolveInfo:Landroid/content/pm/InstantAppResolveInfo;

    .line 346
    invoke-virtual {v4}, Landroid/content/pm/InstantAppResolveInfo;->shouldLetInstallerDecide()Z

    move-result v4

    if-eqz v4, :cond_146

    .line 344
    const/4 v4, 0x1

    goto :goto_149

    .line 346
    :cond_146
    nop

    .line 344
    move/from16 v4, v23

    :goto_149
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 347
    const-string v3, "android.intent.extra.PACKAGE_NAME"

    iget-object v4, v2, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    const-string v3, "android.intent.extra.SPLIT_NAME"

    iget-object v4, v2, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;->splitName:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    const-string v3, "android.intent.extra.LONG_VERSION_CODE"

    iget-wide v4, v2, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;->versionCode:J

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 350
    const-string v3, "android.intent.extra.INSTANT_APP_EXTRAS"

    iget-object v4, v2, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;->extras:Landroid/os/Bundle;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 351
    aput-object v1, v0, v13

    .line 352
    if-nez v13, :cond_177

    .line 355
    invoke-virtual {v8, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 356
    const-string v3, "android.intent.extra.VERSION_CODE"

    iget-wide v4, v2, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;->versionCode:J

    long-to-int v4, v4

    invoke-virtual {v8, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 341
    .end local v1    # "resolvableFilter":Landroid/os/Bundle;
    .end local v2    # "filter":Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;
    :cond_177
    add-int/lit8 v13, v13, 0x1

    move v14, v11

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    const/4 v11, 0x1

    goto :goto_124

    .line 359
    .end local v11    # "max":I
    .end local v13    # "i":I
    :cond_184
    const-string v1, "android.intent.extra.INSTANT_APP_BUNDLES"

    invoke-virtual {v8, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 361
    .end local v0    # "resolvableFilters":[Landroid/os/Bundle;
    :cond_189
    const-string v0, "android.intent.action.INSTALL_INSTANT_APP_PACKAGE"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 363
    .end local v10    # "successIntent":Landroid/content/Intent;
    :goto_18e
    return-object v8
.end method

.method private static computeResolveFilters(Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/pm/InstantAppResolveInfo;)Ljava/util/List;
    .registers 21
    .param p0, "origIntent"    # Landroid/content/Intent;
    .param p1, "resolvedType"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "token"    # Ljava/lang/String;
    .param p5, "instantAppInfo"    # Landroid/content/pm/InstantAppResolveInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/pm/InstantAppResolveInfo;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    .line 445
    move-object/from16 v2, p5

    invoke-virtual/range {p5 .. p5}, Landroid/content/pm/InstantAppResolveInfo;->shouldLetInstallerDecide()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1b

    .line 446
    new-instance v3, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;

    .line 449
    invoke-virtual/range {p5 .. p5}, Landroid/content/pm/InstantAppResolveInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-direct {v3, v2, v4, v5}, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;-><init>(Landroid/content/pm/InstantAppResolveInfo;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 446
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 451
    :cond_1b
    if-eqz v0, :cond_28

    .line 452
    invoke-virtual/range {p5 .. p5}, Landroid/content/pm/InstantAppResolveInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    .line 453
    return-object v4

    .line 455
    :cond_28
    nop

    .line 456
    invoke-virtual/range {p5 .. p5}, Landroid/content/pm/InstantAppResolveInfo;->getIntentFilters()Ljava/util/List;

    move-result-object v3

    .line 457
    .local v3, "instantAppFilters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstantAppIntentFilter;>;"
    if-eqz v3, :cond_10f

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_37

    goto/16 :goto_10f

    .line 468
    :cond_37
    new-instance v5, Lcom/android/server/pm/PackageManagerService$InstantAppIntentResolver;

    invoke-direct {v5}, Lcom/android/server/pm/PackageManagerService$InstantAppIntentResolver;-><init>()V

    .line 470
    .local v5, "instantAppResolver":Lcom/android/server/pm/PackageManagerService$InstantAppIntentResolver;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .local v6, "j":I
    :goto_42
    if-ltz v6, :cond_a9

    .line 471
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/InstantAppIntentFilter;

    .line 472
    .local v7, "instantAppFilter":Landroid/content/pm/InstantAppIntentFilter;
    invoke-virtual {v7}, Landroid/content/pm/InstantAppIntentFilter;->getFilters()Ljava/util/List;

    move-result-object v8

    .line 473
    .local v8, "splitFilters":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    if-eqz v8, :cond_a6

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_57

    .line 474
    goto :goto_a6

    .line 476
    :cond_57
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    .local v9, "k":I
    :goto_5d
    if-ltz v9, :cond_a6

    .line 477
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/IntentFilter;

    .line 478
    .local v10, "filter":Landroid/content/IntentFilter;
    nop

    .line 479
    invoke-virtual {v10}, Landroid/content/IntentFilter;->authoritiesIterator()Ljava/util/Iterator;

    move-result-object v11

    .line 481
    .local v11, "authorities":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    if-eqz v11, :cond_72

    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_93

    :cond_72
    const-string v12, "http"

    .line 482
    invoke-virtual {v10, v12}, Landroid/content/IntentFilter;->hasDataScheme(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_82

    const-string v12, "https"

    invoke-virtual {v10, v12}, Landroid/content/IntentFilter;->hasDataScheme(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_93

    :cond_82
    const-string v12, "android.intent.action.VIEW"

    .line 483
    invoke-virtual {v10, v12}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_93

    const-string v12, "android.intent.category.BROWSABLE"

    .line 484
    invoke-virtual {v10, v12}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_93

    .line 485
    goto :goto_a3

    .line 487
    :cond_93
    new-instance v12, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;

    .line 491
    invoke-virtual {v7}, Landroid/content/pm/InstantAppIntentFilter;->getSplitName()Ljava/lang/String;

    move-result-object v13

    .line 492
    invoke-virtual/range {p5 .. p5}, Landroid/content/pm/InstantAppResolveInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v14

    invoke-direct {v12, v10, v2, v13, v14}, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;-><init>(Landroid/content/IntentFilter;Landroid/content/pm/InstantAppResolveInfo;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 487
    invoke-virtual {v5, v12}, Lcom/android/server/pm/PackageManagerService$InstantAppIntentResolver;->addFilter(Landroid/content/IntentFilter;)V

    .line 476
    .end local v10    # "filter":Landroid/content/IntentFilter;
    .end local v11    # "authorities":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    :goto_a3
    add-int/lit8 v9, v9, -0x1

    goto :goto_5d

    .line 470
    .end local v7    # "instantAppFilter":Landroid/content/pm/InstantAppIntentFilter;
    .end local v8    # "splitFilters":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    .end local v9    # "k":I
    :cond_a6
    :goto_a6
    add-int/lit8 v6, v6, -0x1

    goto :goto_42

    .line 496
    .end local v6    # "j":I
    :cond_a9
    const/4 v6, 0x0

    .line 497
    move-object v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    invoke-virtual {v5, v7, v8, v6, v9}, Lcom/android/server/pm/PackageManagerService$InstantAppIntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v6

    .line 499
    .local v6, "matchedResolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;>;"
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_dc

    .line 500
    sget-boolean v4, Lcom/android/server/pm/InstantAppResolver;->DEBUG_INSTANT:Z

    if-eqz v4, :cond_db

    .line 501
    const-string v4, "PackageManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "] Found match(es); "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    :cond_db
    return-object v6

    .line 504
    :cond_dc
    sget-boolean v10, Lcom/android/server/pm/InstantAppResolver;->DEBUG_INSTANT:Z

    if-eqz v10, :cond_10e

    .line 505
    const-string v10, "PackageManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "] No matches found package: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    invoke-virtual/range {p5 .. p5}, Landroid/content/pm/InstantAppResolveInfo;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", versionCode: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    invoke-virtual/range {p5 .. p5}, Landroid/content/pm/InstantAppResolveInfo;->getVersionCode()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 505
    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    :cond_10e
    return-object v4

    .line 459
    .end local v5    # "instantAppResolver":Lcom/android/server/pm/PackageManagerService$InstantAppIntentResolver;
    .end local v6    # "matchedResolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;>;"
    :cond_10f
    :goto_10f
    move-object v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    invoke-virtual {v7}, Landroid/content/Intent;->isWebIntent()Z

    move-result v5

    if-eqz v5, :cond_11b

    .line 460
    return-object v4

    .line 463
    :cond_11b
    sget-boolean v4, Lcom/android/server/pm/InstantAppResolver;->DEBUG_INSTANT:Z

    if-eqz v4, :cond_126

    .line 464
    const-string v4, "PackageManager"

    const-string v5, "No app filters; go to phase 2"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    :cond_126
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    return-object v4
.end method

.method private static createFailureIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;
    .registers 4
    .param p0, "origIntent"    # Landroid/content/Intent;
    .param p1, "token"    # Ljava/lang/String;

    .line 425
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 426
    .local v0, "failureIntent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    or-int/lit16 v1, v1, 0x200

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 427
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    and-int/lit16 v1, v1, -0x801

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 428
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setLaunchToken(Ljava/lang/String;)V

    .line 429
    return-object v0
.end method

.method public static doInstantAppResolutionPhaseOne(Lcom/android/server/pm/InstantAppResolverConnection;Landroid/content/pm/InstantAppRequest;)Landroid/content/pm/AuxiliaryResolveInfo;
    .registers 21
    .param p0, "connection"    # Lcom/android/server/pm/InstantAppResolverConnection;
    .param p1, "requestObj"    # Landroid/content/pm/InstantAppRequest;

    .line 122
    move-object/from16 v1, p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 123
    .local v2, "startTime":J
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v11

    .line 124
    .local v11, "token":Ljava/lang/String;
    sget-boolean v0, Lcom/android/server/pm/InstantAppResolver;->DEBUG_INSTANT:Z

    if-eqz v0, :cond_2d

    .line 125
    const-string v0, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "] Phase1; resolving"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_2d
    iget-object v12, v1, Landroid/content/pm/InstantAppRequest;->origIntent:Landroid/content/Intent;

    .line 128
    .local v12, "origIntent":Landroid/content/Intent;
    invoke-static {v12}, Lcom/android/server/pm/InstantAppResolver;->sanitizeIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v13

    .line 130
    .local v13, "sanitizedIntent":Landroid/content/Intent;
    const/4 v14, 0x0

    .line 131
    .local v14, "resolveInfo":Landroid/content/pm/AuxiliaryResolveInfo;
    const/4 v15, 0x0

    move/from16 v16, v15

    .line 133
    .local v16, "resolutionStatus":I
    const/4 v10, 0x2

    :try_start_38
    iget-object v0, v1, Landroid/content/pm/InstantAppRequest;->digest:Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

    .line 135
    invoke-virtual {v0}, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->getDigestPrefixSecure()[I

    move-result-object v0

    .line 134
    move-object/from16 v9, p0

    invoke-virtual {v9, v13, v0, v11}, Lcom/android/server/pm/InstantAppResolverConnection;->getInstantAppResolveInfoList(Landroid/content/Intent;[ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 136
    .local v0, "instantAppResolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstantAppResolveInfo;>;"
    if-eqz v0, :cond_67

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_67

    .line 137
    iget-object v6, v1, Landroid/content/pm/InstantAppRequest;->resolvedType:Ljava/lang/String;

    iget v7, v1, Landroid/content/pm/InstantAppRequest;->userId:I

    .line 139
    invoke-virtual {v12}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v8

    iget-object v5, v1, Landroid/content/pm/InstantAppRequest;->digest:Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;
    :try_end_56
    .catch Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException; {:try_start_38 .. :try_end_56} :catch_69

    .line 137
    move-object v4, v0

    move-object/from16 v17, v5

    move-object v5, v12

    move-object/from16 v9, v17

    move v15, v10

    move-object v10, v11

    :try_start_5e
    invoke-static/range {v4 .. v10}, Lcom/android/server/pm/InstantAppResolver;->filterInstantAppIntent(Ljava/util/List;Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;Ljava/lang/String;)Landroid/content/pm/AuxiliaryResolveInfo;

    move-result-object v4
    :try_end_62
    .catch Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException; {:try_start_5e .. :try_end_62} :catch_65

    move-object v0, v4

    .line 149
    .end local v14    # "resolveInfo":Landroid/content/pm/AuxiliaryResolveInfo;
    .local v0, "resolveInfo":Landroid/content/pm/AuxiliaryResolveInfo;
    move-object v14, v0

    goto :goto_68

    .line 141
    .end local v0    # "resolveInfo":Landroid/content/pm/AuxiliaryResolveInfo;
    .restart local v14    # "resolveInfo":Landroid/content/pm/AuxiliaryResolveInfo;
    :catch_65
    move-exception v0

    goto :goto_6b

    .line 149
    :cond_67
    move v15, v10

    :goto_68
    goto :goto_72

    .line 141
    :catch_69
    move-exception v0

    move v15, v10

    .line 142
    .local v0, "e":Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;
    :goto_6b
    iget v4, v0, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;->failure:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_75

    .line 143
    const/16 v16, 0x2

    .line 151
    .end local v16    # "resolutionStatus":I
    .local v0, "resolutionStatus":I
    :goto_72
    move/from16 v0, v16

    goto :goto_7f

    .line 144
    .local v0, "e":Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;
    .restart local v16    # "resolutionStatus":I
    :cond_75
    iget v4, v0, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;->failure:I

    if-ne v4, v15, :cond_7c

    .line 145
    const/16 v16, 0x3

    goto :goto_72

    .line 147
    :cond_7c
    const/16 v16, 0x1

    .end local v0    # "e":Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;
    goto :goto_72

    .line 151
    .end local v16    # "resolutionStatus":I
    .local v0, "resolutionStatus":I
    :goto_7f
    iget-boolean v4, v1, Landroid/content/pm/InstantAppRequest;->resolveForStart:Z

    if-eqz v4, :cond_8a

    if-nez v0, :cond_8a

    .line 152
    const/16 v4, 0x383

    invoke-static {v4, v2, v3, v11, v0}, Lcom/android/server/pm/InstantAppResolver;->logMetrics(IJLjava/lang/String;I)V

    .line 155
    :cond_8a
    sget-boolean v4, Lcom/android/server/pm/InstantAppResolver;->DEBUG_INSTANT:Z

    if-eqz v4, :cond_106

    if-nez v14, :cond_106

    .line 156
    if-ne v0, v15, :cond_ae

    .line 157
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "] Phase1; bind timed out"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_106

    .line 158
    :cond_ae
    const/4 v4, 0x3

    if-ne v0, v4, :cond_cd

    .line 159
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "] Phase1; call timed out"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_106

    .line 160
    :cond_cd
    if-eqz v0, :cond_eb

    .line 161
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "] Phase1; service connection error"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_106

    .line 163
    :cond_eb
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "] Phase1; No results matched"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_106
    :goto_106
    if-nez v14, :cond_11c

    invoke-virtual {v12}, Landroid/content/Intent;->getFlags()I

    move-result v4

    and-int/lit16 v4, v4, 0x800

    if-eqz v4, :cond_11c

    .line 168
    new-instance v4, Landroid/content/pm/AuxiliaryResolveInfo;

    invoke-static {v12, v11}, Lcom/android/server/pm/InstantAppResolver;->createFailureIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v4, v11, v7, v5, v6}, Landroid/content/pm/AuxiliaryResolveInfo;-><init>(Ljava/lang/String;ZLandroid/content/Intent;Ljava/util/List;)V

    return-object v4

    .line 171
    :cond_11c
    return-object v14
.end method

.method public static doInstantAppResolutionPhaseTwo(Landroid/content/Context;Lcom/android/server/pm/InstantAppResolverConnection;Landroid/content/pm/InstantAppRequest;Landroid/content/pm/ActivityInfo;Landroid/os/Handler;)V
    .registers 23
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "connection"    # Lcom/android/server/pm/InstantAppResolverConnection;
    .param p2, "requestObj"    # Landroid/content/pm/InstantAppRequest;
    .param p3, "instantAppInstaller"    # Landroid/content/pm/ActivityInfo;
    .param p4, "callbackHandler"    # Landroid/os/Handler;

    move-object/from16 v8, p2

    .line 177
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 178
    .local v14, "startTime":J
    iget-object v0, v8, Landroid/content/pm/InstantAppRequest;->responseObj:Landroid/content/pm/AuxiliaryResolveInfo;

    iget-object v12, v0, Landroid/content/pm/AuxiliaryResolveInfo;->token:Ljava/lang/String;

    .line 179
    .local v12, "token":Ljava/lang/String;
    sget-boolean v0, Lcom/android/server/pm/InstantAppResolver;->DEBUG_INSTANT:Z

    if-eqz v0, :cond_29

    .line 180
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] Phase2; resolving"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_29
    iget-object v11, v8, Landroid/content/pm/InstantAppRequest;->origIntent:Landroid/content/Intent;

    .line 183
    .local v11, "origIntent":Landroid/content/Intent;
    invoke-static {v11}, Lcom/android/server/pm/InstantAppResolver;->sanitizeIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v17

    .line 185
    .local v17, "sanitizedIntent":Landroid/content/Intent;
    new-instance v13, Lcom/android/server/pm/InstantAppResolver$1;

    move-object v1, v13

    move-object v2, v11

    move-object v3, v8

    move-object v4, v12

    move-object/from16 v5, v17

    move-object/from16 v6, p3

    move-object/from16 v7, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/InstantAppResolver$1;-><init>(Landroid/content/Intent;Landroid/content/pm/InstantAppRequest;Ljava/lang/String;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/Context;)V

    .line 226
    .local v13, "callback":Lcom/android/server/pm/InstantAppResolverConnection$PhaseTwoCallback;
    :try_start_3e
    iget-object v0, v8, Landroid/content/pm/InstantAppRequest;->digest:Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

    .line 227
    invoke-virtual {v0}, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->getDigestPrefixSecure()[I

    move-result-object v0
    :try_end_44
    .catch Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException; {:try_start_3e .. :try_end_44} :catch_55

    .line 226
    move-object/from16 v9, p1

    move-object/from16 v10, v17

    move-object v1, v11

    move-object v11, v0

    .end local v11    # "origIntent":Landroid/content/Intent;
    .local v1, "origIntent":Landroid/content/Intent;
    move-object v2, v12

    .end local v12    # "token":Ljava/lang/String;
    .local v2, "token":Ljava/lang/String;
    move-wide v3, v14

    move-object/from16 v14, p4

    .end local v14    # "startTime":J
    .local v3, "startTime":J
    move-wide v15, v3

    :try_start_4f
    invoke-virtual/range {v9 .. v16}, Lcom/android/server/pm/InstantAppResolverConnection;->getInstantAppIntentFilterList(Landroid/content/Intent;[ILjava/lang/String;Lcom/android/server/pm/InstantAppResolverConnection$PhaseTwoCallback;Landroid/os/Handler;J)V
    :try_end_52
    .catch Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException; {:try_start_4f .. :try_end_52} :catch_53

    .line 243
    goto :goto_a3

    .line 229
    :catch_53
    move-exception v0

    goto :goto_59

    .end local v1    # "origIntent":Landroid/content/Intent;
    .end local v2    # "token":Ljava/lang/String;
    .end local v3    # "startTime":J
    .restart local v11    # "origIntent":Landroid/content/Intent;
    .restart local v12    # "token":Ljava/lang/String;
    .restart local v14    # "startTime":J
    :catch_55
    move-exception v0

    move-object v1, v11

    move-object v2, v12

    move-wide v3, v14

    .line 230
    .end local v11    # "origIntent":Landroid/content/Intent;
    .end local v12    # "token":Ljava/lang/String;
    .end local v14    # "startTime":J
    .local v0, "e":Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;
    .restart local v1    # "origIntent":Landroid/content/Intent;
    .restart local v2    # "token":Ljava/lang/String;
    .restart local v3    # "startTime":J
    :goto_59
    const/4 v5, 0x1

    .line 231
    .local v5, "resolutionStatus":I
    iget v6, v0, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;->failure:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_60

    .line 232
    const/4 v5, 0x2

    .line 234
    :cond_60
    const/16 v6, 0x384

    invoke-static {v6, v3, v4, v2, v5}, Lcom/android/server/pm/InstantAppResolver;->logMetrics(IJLjava/lang/String;I)V

    .line 236
    sget-boolean v6, Lcom/android/server/pm/InstantAppResolver;->DEBUG_INSTANT:Z

    if-eqz v6, :cond_a3

    .line 237
    const/4 v6, 0x2

    if-ne v5, v6, :cond_88

    .line 238
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "["

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "] Phase2; bind timed out"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a3

    .line 240
    :cond_88
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "["

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "] Phase2; service connection error"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    .end local v0    # "e":Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;
    .end local v5    # "resolutionStatus":I
    :cond_a3
    :goto_a3
    return-void
.end method

.method private static filterInstantAppIntent(Ljava/util/List;Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;Ljava/lang/String;)Landroid/content/pm/AuxiliaryResolveInfo;
    .registers 23
    .param p1, "origIntent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "digest"    # Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;
    .param p6, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/InstantAppResolveInfo;",
            ">;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/pm/AuxiliaryResolveInfo;"
        }
    .end annotation

    .line 370
    .local p0, "instantAppResolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstantAppResolveInfo;>;"
    move-object/from16 v6, p6

    invoke-virtual/range {p5 .. p5}, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->getDigestPrefix()[I

    move-result-object v7

    .line 371
    .local v7, "shaPrefix":[I
    invoke-virtual/range {p5 .. p5}, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->getDigestBytes()[[B

    move-result-object v8

    .line 372
    .local v8, "digestBytes":[[B
    const/4 v0, 0x0

    .line 373
    .local v0, "requiresSecondPhase":Z
    const/4 v1, 0x0

    .line 374
    .local v1, "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->isWebIntent()Z

    move-result v2

    const/4 v9, 0x1

    if-nez v2, :cond_21

    array-length v2, v7

    if-lez v2, :cond_1f

    .line 375
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    move-result v2

    and-int/lit16 v2, v2, 0x800

    if-nez v2, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 v2, 0x0

    goto :goto_22

    :cond_21
    :goto_21
    move v2, v9

    :goto_22
    move v10, v2

    .line 376
    .local v10, "requiresPrefixMatch":Z
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move v13, v0

    move-object v12, v1

    .end local v0    # "requiresSecondPhase":Z
    .end local v1    # "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;>;"
    .local v12, "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;>;"
    .local v13, "requiresSecondPhase":Z
    :goto_29
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/content/pm/InstantAppResolveInfo;

    .line 377
    .local v14, "instantAppResolveInfo":Landroid/content/pm/InstantAppResolveInfo;
    if-eqz v10, :cond_46

    invoke-virtual {v14}, Landroid/content/pm/InstantAppResolveInfo;->shouldLetInstallerDecide()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 378
    const-string v0, "PackageManager"

    const-string v1, "InstantAppResolveInfo with mShouldLetInstallerDecide=true when digest required; ignoring"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    goto :goto_29

    .line 382
    :cond_46
    invoke-virtual {v14}, Landroid/content/pm/InstantAppResolveInfo;->getDigestBytes()[B

    move-result-object v15

    .line 385
    .local v15, "filterDigestBytes":[B
    array-length v0, v7

    if-lez v0, :cond_67

    if-nez v10, :cond_52

    array-length v0, v15

    if-lez v0, :cond_67

    .line 386
    :cond_52
    const/4 v0, 0x0

    .line 388
    .local v0, "matchFound":Z
    array-length v1, v7

    sub-int/2addr v1, v9

    .local v1, "i":I
    :goto_55
    if-ltz v1, :cond_64

    .line 389
    aget-object v2, v8, v1

    invoke-static {v2, v15}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_61

    .line 390
    const/4 v0, 0x1

    .line 391
    goto :goto_64

    .line 388
    :cond_61
    add-int/lit8 v1, v1, -0x1

    goto :goto_55

    .line 394
    .end local v1    # "i":I
    :cond_64
    :goto_64
    if-nez v0, :cond_67

    .line 395
    goto :goto_29

    .line 399
    .end local v0    # "matchFound":Z
    :cond_67
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    move-object v4, v6

    move-object v5, v14

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/InstantAppResolver;->computeResolveFilters(Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/pm/InstantAppResolveInfo;)Ljava/util/List;

    move-result-object v0

    .line 401
    .local v0, "matchFilters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;>;"
    if-eqz v0, :cond_8a

    .line 402
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7e

    .line 403
    const/4 v13, 0x1

    .line 405
    :cond_7e
    if-nez v12, :cond_87

    .line 406
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 411
    .end local v12    # "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;>;"
    .local v1, "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;>;"
    move-object v12, v1

    goto :goto_8a

    .line 408
    .end local v1    # "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;>;"
    .restart local v12    # "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;>;"
    :cond_87
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 411
    .end local v0    # "matchFilters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;>;"
    .end local v14    # "instantAppResolveInfo":Landroid/content/pm/InstantAppResolveInfo;
    .end local v15    # "filterDigestBytes":[B
    :cond_8a
    :goto_8a
    goto :goto_29

    .line 412
    :cond_8b
    if-eqz v12, :cond_9f

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9f

    .line 413
    new-instance v0, Landroid/content/pm/AuxiliaryResolveInfo;

    .line 414
    move-object/from16 v1, p1

    invoke-static {v1, v6}, Lcom/android/server/pm/InstantAppResolver;->createFailureIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v0, v6, v13, v2, v12}, Landroid/content/pm/AuxiliaryResolveInfo;-><init>(Ljava/lang/String;ZLandroid/content/Intent;Ljava/util/List;)V

    .line 413
    return-object v0

    .line 417
    :cond_9f
    move-object/from16 v1, p1

    const/4 v0, 0x0

    return-object v0
.end method

.method private static getLogger()Lcom/android/internal/logging/MetricsLogger;
    .registers 1

    .line 92
    sget-object v0, Lcom/android/server/pm/InstantAppResolver;->sMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    if-nez v0, :cond_b

    .line 93
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    sput-object v0, Lcom/android/server/pm/InstantAppResolver;->sMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 95
    :cond_b
    sget-object v0, Lcom/android/server/pm/InstantAppResolver;->sMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    return-object v0
.end method

.method private static logMetrics(IJLjava/lang/String;I)V
    .registers 9
    .param p0, "action"    # I
    .param p1, "startTime"    # J
    .param p3, "token"    # Ljava/lang/String;
    .param p4, "status"    # I

    .line 514
    new-instance v0, Landroid/metrics/LogMaker;

    invoke-direct {v0, p0}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 515
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    new-instance v1, Ljava/lang/Long;

    .line 517
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p1

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    .line 516
    const/16 v2, 0x385

    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 518
    const/16 v1, 0x387

    invoke-virtual {v0, v1, p3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p4}, Ljava/lang/Integer;-><init>(I)V

    .line 519
    const/16 v2, 0x386

    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 520
    .local v0, "logMaker":Landroid/metrics/LogMaker;
    invoke-static {}, Lcom/android/server/pm/InstantAppResolver;->getLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 521
    return-void
.end method

.method public static sanitizeIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .registers 6
    .param p0, "origIntent"    # Landroid/content/Intent;

    .line 104
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 105
    .local v0, "sanitizedIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v1

    .line 106
    .local v1, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v1, :cond_23

    .line 107
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 108
    .local v3, "category":Ljava/lang/String;
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    .end local v3    # "category":Ljava/lang/String;
    goto :goto_13

    .line 111
    :cond_23
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_2b

    .line 112
    const/4 v2, 0x0

    goto :goto_37

    .line 113
    :cond_2b
    invoke-virtual {p0}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const-string v4, ""

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 114
    .local v2, "sanitizedUri":Landroid/net/Uri;
    :goto_37
    invoke-virtual {p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 116
    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    return-object v0
.end method
