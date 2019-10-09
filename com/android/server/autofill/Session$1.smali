.class Lcom/android/server/autofill/Session$1;
.super Landroid/app/IAssistDataReceiver$Stub;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/autofill/Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/autofill/Session;


# direct methods
.method constructor <init>(Lcom/android/server/autofill/Session;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/autofill/Session;

    .line 243
    iput-object p1, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    invoke-direct {p0}, Landroid/app/IAssistDataReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onHandleAssistData(Landroid/os/Bundle;)V
    .registers 15
    .param p1, "resultData"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 246
    const-string/jumbo v0, "structure"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/assist/AssistStructure;

    .line 247
    .local v0, "structure":Landroid/app/assist/AssistStructure;
    if-nez v0, :cond_13

    .line 248
    const-string v1, "AutofillSession"

    const-string v2, "No assist structure - app might have crashed providing it"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    return-void

    .line 252
    :cond_13
    const-string/jumbo v1, "receiverExtras"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 253
    .local v1, "receiverExtras":Landroid/os/Bundle;
    if-nez v1, :cond_24

    .line 254
    const-string v2, "AutofillSession"

    const-string v3, "No receiver extras - app might have crashed providing it"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    return-void

    .line 258
    :cond_24
    const-string v2, "android.service.autofill.extra.REQUEST_ID"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 260
    .local v2, "requestId":I
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v3, :cond_4c

    .line 261
    const-string v3, "AutofillSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "New structure for requestId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :cond_4c
    iget-object v3, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    # getter for: Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/server/autofill/Session;->access$000(Lcom/android/server/autofill/Session;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 272
    const/4 v4, 0x0

    const/4 v5, 0x1

    :try_start_55
    invoke-virtual {v0}, Landroid/app/assist/AssistStructure;->ensureDataForAutofill()V
    :try_end_58
    .catch Ljava/lang/RuntimeException; {:try_start_55 .. :try_end_58} :catch_1c9
    .catchall {:try_start_55 .. :try_end_58} :catchall_1c7

    .line 277
    nop

    .line 280
    :try_start_59
    invoke-virtual {v0}, Landroid/app/assist/AssistStructure;->getActivityComponent()Landroid/content/ComponentName;

    move-result-object v6

    .line 281
    .local v6, "componentNameFromApp":Landroid/content/ComponentName;
    if-eqz v6, :cond_73

    iget-object v7, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    # getter for: Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;
    invoke-static {v7}, Lcom/android/server/autofill/Session;->access$200(Lcom/android/server/autofill/Session;)Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 282
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c1

    .line 283
    :cond_73
    const-string v7, "AutofillSession"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Activity "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    # getter for: Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;
    invoke-static {v9}, Lcom/android/server/autofill/Session;->access$200(Lcom/android/server/autofill/Session;)Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " forged different component on AssistStructure: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object v7, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    # getter for: Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;
    invoke-static {v7}, Lcom/android/server/autofill/Session;->access$200(Lcom/android/server/autofill/Session;)Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/app/assist/AssistStructure;->setActivityComponent(Landroid/content/ComponentName;)V

    .line 286
    iget-object v7, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    # getter for: Lcom/android/server/autofill/Session;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;
    invoke-static {v7}, Lcom/android/server/autofill/Session;->access$400(Lcom/android/server/autofill/Session;)Lcom/android/internal/logging/MetricsLogger;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    const/16 v9, 0x3b4

    # invokes: Lcom/android/server/autofill/Session;->newLogMaker(I)Landroid/metrics/LogMaker;
    invoke-static {v8, v9}, Lcom/android/server/autofill/Session;->access$300(Lcom/android/server/autofill/Session;I)Landroid/metrics/LogMaker;

    move-result-object v8

    const/16 v9, 0x3b5

    .line 288
    if-nez v6, :cond_b6

    const-string/jumbo v10, "null"

    goto :goto_ba

    .line 289
    :cond_b6
    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v10

    .line 287
    :goto_ba
    invoke-virtual {v8, v9, v10}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v8

    .line 286
    invoke-virtual {v7, v8}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 291
    :cond_c1
    iget-object v7, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    # getter for: Lcom/android/server/autofill/Session;->mCompatMode:Z
    invoke-static {v7}, Lcom/android/server/autofill/Session;->access$500(Lcom/android/server/autofill/Session;)Z

    move-result v7

    if-eqz v7, :cond_159

    .line 293
    iget-object v7, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    # getter for: Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;
    invoke-static {v7}, Lcom/android/server/autofill/Session;->access$600(Lcom/android/server/autofill/Session;)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    .line 294
    # getter for: Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;
    invoke-static {v8}, Lcom/android/server/autofill/Session;->access$200(Lcom/android/server/autofill/Session;)Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 293
    invoke-virtual {v7, v8}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getUrlBarResourceIdsForCompatMode(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 295
    .local v7, "urlBarIds":[Ljava/lang/String;
    sget-boolean v8, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v8, :cond_fc

    .line 296
    const-string v8, "AutofillSession"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "url_bars in compat mode: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_fc
    if-eqz v7, :cond_159

    .line 299
    iget-object v8, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v0, v7}, Lcom/android/server/autofill/Helper;->sanitizeUrlBar(Landroid/app/assist/AssistStructure;[Ljava/lang/String;)Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object v9

    # setter for: Lcom/android/server/autofill/Session;->mUrlBar:Landroid/app/assist/AssistStructure$ViewNode;
    invoke-static {v8, v9}, Lcom/android/server/autofill/Session;->access$702(Lcom/android/server/autofill/Session;Landroid/app/assist/AssistStructure$ViewNode;)Landroid/app/assist/AssistStructure$ViewNode;

    .line 300
    iget-object v8, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    # getter for: Lcom/android/server/autofill/Session;->mUrlBar:Landroid/app/assist/AssistStructure$ViewNode;
    invoke-static {v8}, Lcom/android/server/autofill/Session;->access$700(Lcom/android/server/autofill/Session;)Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object v8

    if-eqz v8, :cond_159

    .line 301
    iget-object v8, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    # getter for: Lcom/android/server/autofill/Session;->mUrlBar:Landroid/app/assist/AssistStructure$ViewNode;
    invoke-static {v8}, Lcom/android/server/autofill/Session;->access$700(Lcom/android/server/autofill/Session;)Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/assist/AssistStructure$ViewNode;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v8

    .line 302
    .local v8, "urlBarId":Landroid/view/autofill/AutofillId;
    sget-boolean v9, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v9, :cond_145

    .line 303
    const-string v9, "AutofillSession"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Setting urlBar as id="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " and domain "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    .line 304
    # getter for: Lcom/android/server/autofill/Session;->mUrlBar:Landroid/app/assist/AssistStructure$ViewNode;
    invoke-static {v11}, Lcom/android/server/autofill/Session;->access$700(Lcom/android/server/autofill/Session;)Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/assist/AssistStructure$ViewNode;->getWebDomain()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 303
    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_145
    new-instance v9, Lcom/android/server/autofill/ViewState;

    iget-object v10, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    iget-object v11, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    const/16 v12, 0x200

    invoke-direct {v9, v10, v8, v11, v12}, Lcom/android/server/autofill/ViewState;-><init>(Lcom/android/server/autofill/Session;Landroid/view/autofill/AutofillId;Lcom/android/server/autofill/ViewState$Listener;I)V

    .line 308
    .local v9, "viewState":Lcom/android/server/autofill/ViewState;
    iget-object v10, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    # getter for: Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;
    invoke-static {v10}, Lcom/android/server/autofill/Session;->access$800(Lcom/android/server/autofill/Session;)Landroid/util/ArrayMap;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    .end local v7    # "urlBarIds":[Ljava/lang/String;
    .end local v8    # "urlBarId":Landroid/view/autofill/AutofillId;
    .end local v9    # "viewState":Lcom/android/server/autofill/ViewState;
    :cond_159
    invoke-virtual {v0, v5}, Landroid/app/assist/AssistStructure;->sanitizeForParceling(Z)V

    .line 315
    invoke-virtual {v0}, Landroid/app/assist/AssistStructure;->getFlags()I

    move-result v7

    .line 317
    .local v7, "flags":I
    iget-object v8, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    # getter for: Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/server/autofill/Session;->access$900(Lcom/android/server/autofill/Session;)Ljava/util/ArrayList;

    move-result-object v8

    if-nez v8, :cond_172

    .line 318
    iget-object v8, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v5}, Ljava/util/ArrayList;-><init>(I)V

    # setter for: Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;
    invoke-static {v8, v9}, Lcom/android/server/autofill/Session;->access$902(Lcom/android/server/autofill/Session;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 320
    :cond_172
    iget-object v5, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    # getter for: Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/autofill/Session;->access$900(Lcom/android/server/autofill/Session;)Ljava/util/ArrayList;

    move-result-object v5

    new-instance v8, Landroid/service/autofill/FillContext;

    invoke-direct {v8, v2, v0}, Landroid/service/autofill/FillContext;-><init>(ILandroid/app/assist/AssistStructure;)V

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    iget-object v5, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    # invokes: Lcom/android/server/autofill/Session;->cancelCurrentRequestLocked()V
    invoke-static {v5}, Lcom/android/server/autofill/Session;->access$1000(Lcom/android/server/autofill/Session;)V

    .line 324
    iget-object v5, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    # getter for: Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/autofill/Session;->access$900(Lcom/android/server/autofill/Session;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 325
    .local v5, "numContexts":I
    nop

    .line 325
    .local v4, "i":I
    :goto_190
    if-ge v4, v5, :cond_1a6

    .line 326
    iget-object v8, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    iget-object v9, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    # getter for: Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/android/server/autofill/Session;->access$900(Lcom/android/server/autofill/Session;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/service/autofill/FillContext;

    # invokes: Lcom/android/server/autofill/Session;->fillContextWithAllowedValuesLocked(Landroid/service/autofill/FillContext;I)V
    invoke-static {v8, v9, v7}, Lcom/android/server/autofill/Session;->access$1100(Lcom/android/server/autofill/Session;Landroid/service/autofill/FillContext;I)V

    .line 325
    add-int/lit8 v4, v4, 0x1

    goto :goto_190

    .line 333
    .end local v4    # "i":I
    :cond_1a6
    new-instance v4, Landroid/service/autofill/FillRequest;

    new-instance v8, Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    # getter for: Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/android/server/autofill/Session;->access$900(Lcom/android/server/autofill/Session;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v9, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    .line 334
    # getter for: Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;
    invoke-static {v9}, Lcom/android/server/autofill/Session;->access$1200(Lcom/android/server/autofill/Session;)Landroid/os/Bundle;

    move-result-object v9

    invoke-direct {v4, v2, v8, v9, v7}, Landroid/service/autofill/FillRequest;-><init>(ILjava/util/ArrayList;Landroid/os/Bundle;I)V

    .line 335
    .end local v5    # "numContexts":I
    .end local v6    # "componentNameFromApp":Landroid/content/ComponentName;
    .end local v7    # "flags":I
    .local v4, "request":Landroid/service/autofill/FillRequest;
    monitor-exit v3
    :try_end_1bd
    .catchall {:try_start_59 .. :try_end_1bd} :catchall_1c7

    .line 337
    iget-object v3, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    # getter for: Lcom/android/server/autofill/Session;->mRemoteFillService:Lcom/android/server/autofill/RemoteFillService;
    invoke-static {v3}, Lcom/android/server/autofill/Session;->access$1300(Lcom/android/server/autofill/Session;)Lcom/android/server/autofill/RemoteFillService;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/server/autofill/RemoteFillService;->onFillRequest(Landroid/service/autofill/FillRequest;)V

    .line 338
    return-void

    .line 335
    .end local v4    # "request":Landroid/service/autofill/FillRequest;
    :catchall_1c7
    move-exception v4

    goto :goto_1de

    .line 273
    :catch_1c9
    move-exception v6

    .line 274
    .local v6, "e":Ljava/lang/RuntimeException;
    :try_start_1ca
    iget-object v7, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    const-string v8, "Exception lazy loading assist structure for %s: %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    .line 275
    invoke-virtual {v0}, Landroid/app/assist/AssistStructure;->getActivityComponent()Landroid/content/ComponentName;

    move-result-object v10

    aput-object v10, v9, v4

    aput-object v6, v9, v5

    .line 274
    # invokes: Lcom/android/server/autofill/Session;->wtf(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-static {v7, v6, v8, v9}, Lcom/android/server/autofill/Session;->access$100(Lcom/android/server/autofill/Session;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 276
    monitor-exit v3

    return-void

    .line 335
    .end local v6    # "e":Ljava/lang/RuntimeException;
    :goto_1de
    monitor-exit v3
    :try_end_1df
    .catchall {:try_start_1ca .. :try_end_1df} :catchall_1c7

    throw v4
.end method

.method public onHandleAssistScreenshot(Landroid/graphics/Bitmap;)V
    .registers 2
    .param p1, "screenshot"    # Landroid/graphics/Bitmap;

    .line 343
    return-void
.end method
