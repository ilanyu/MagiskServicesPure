.class final Lcom/android/server/print/UserState;
.super Ljava/lang/Object;
.source "UserState.java"

# interfaces
.implements Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;
.implements Lcom/android/server/print/RemotePrintService$PrintServiceCallbacks;
.implements Lcom/android/server/print/RemotePrintServiceRecommendationService$RemotePrintServiceRecommendationServiceCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/print/UserState$PrintJobForAppCache;,
        Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;,
        Lcom/android/server/print/UserState$ListenerRecord;,
        Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;
    }
.end annotation


# static fields
.field private static final COMPONENT_NAME_SEPARATOR:C = ':'

.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "UserState"

.field private static final SERVICE_RESTART_DELAY_MILLIS:I = 0x1f4


# instance fields
.field private final mActiveServices:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/print/RemotePrintService;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDestroyed:Z

.field private final mDisabledServices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private final mInstalledServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/printservice/PrintServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIsInstantServiceAllowed:Z

.field private final mLock:Ljava/lang/Object;

.field private final mPrintJobForAppCache:Lcom/android/server/print/UserState$PrintJobForAppCache;

.field private mPrintJobStateChangeListenerRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mPrintServiceRecommendations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/printservice/recommendation/RecommendationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPrintServiceRecommendationsChangeListenerRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/print/UserState$ListenerRecord<",
            "Landroid/printservice/recommendation/IRecommendationsChangeListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPrintServiceRecommendationsService:Lcom/android/server/print/RemotePrintServiceRecommendationService;

.field private mPrintServicesChangeListenerRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/print/UserState$ListenerRecord<",
            "Landroid/print/IPrintServicesChangeListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

.field private final mQueryIntent:Landroid/content/Intent;

.field private final mSpooler:Lcom/android/server/print/RemotePrintSpooler;

.field private final mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

.field private final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/Object;Z)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .param p3, "lock"    # Ljava/lang/Object;
    .param p4, "lowPriority"    # Z

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    iput-object v0, p0, Lcom/android/server/print/UserState;->mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 116
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.printservice.PrintService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/print/UserState;->mQueryIntent:Landroid/content/Intent;

    .line 119
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    .line 125
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/print/UserState;->mDisabledServices:Ljava/util/Set;

    .line 128
    new-instance v0, Lcom/android/server/print/UserState$PrintJobForAppCache;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/print/UserState$PrintJobForAppCache;-><init>(Lcom/android/server/print/UserState;Lcom/android/server/print/UserState$1;)V

    iput-object v0, p0, Lcom/android/server/print/UserState;->mPrintJobForAppCache:Lcom/android/server/print/UserState$PrintJobForAppCache;

    .line 165
    iput-object p1, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    .line 166
    iput p2, p0, Lcom/android/server/print/UserState;->mUserId:I

    .line 167
    iput-object p3, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    .line 168
    new-instance v0, Lcom/android/server/print/RemotePrintSpooler;

    invoke-direct {v0, p1, p2, p4, p0}, Lcom/android/server/print/RemotePrintSpooler;-><init>(Landroid/content/Context;IZLcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;)V

    iput-object v0, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    .line 170
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 171
    :try_start_42
    invoke-direct {p0}, Lcom/android/server/print/UserState;->readInstalledPrintServicesLocked()V

    .line 172
    invoke-direct {p0}, Lcom/android/server/print/UserState;->upgradePersistentStateIfNeeded()V

    .line 173
    invoke-direct {p0}, Lcom/android/server/print/UserState;->readDisabledPrintServicesLocked()V

    .line 174
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_42 .. :try_end_4c} :catchall_53

    .line 177
    invoke-virtual {p0}, Lcom/android/server/print/UserState;->prunePrintServices()V

    .line 179
    invoke-direct {p0}, Lcom/android/server/print/UserState;->onConfigurationChanged()V

    .line 180
    return-void

    .line 174
    :catchall_53
    move-exception v1

    :try_start_54
    monitor-exit v0
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_53

    throw v1
.end method

.method static synthetic access$102(Lcom/android/server/print/UserState;Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;)Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/print/UserState;
    .param p1, "x1"    # Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    .line 102
    iput-object p1, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/server/print/UserState;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/print/UserState;

    .line 102
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/print/UserState;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/print/UserState;

    .line 102
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/print/UserState;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/print/UserState;

    .line 102
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrintServicesChangeListenerRecords:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/print/UserState;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/print/UserState;

    .line 102
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsChangeListenerRecords:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/print/UserState;)Landroid/util/ArrayMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/print/UserState;

    .line 102
    iget-object v0, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/print/UserState;Lcom/android/server/print/RemotePrintService;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/print/UserState;
    .param p1, "x1"    # Lcom/android/server/print/RemotePrintService;

    .line 102
    invoke-direct {p0, p1}, Lcom/android/server/print/UserState;->removeServiceLocked(Lcom/android/server/print/RemotePrintService;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/print/UserState;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/print/UserState;

    .line 102
    iget-boolean v0, p0, Lcom/android/server/print/UserState;->mDestroyed:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/print/UserState;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/print/UserState;

    .line 102
    iget-object v0, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private addServiceLocked(Lcom/android/server/print/RemotePrintService;)V
    .registers 4
    .param p1, "service"    # Lcom/android/server/print/RemotePrintService;

    .line 1079
    iget-object v0, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/server/print/RemotePrintService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1080
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    if-eqz v0, :cond_12

    .line 1081
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-virtual {v0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->onServiceAddedLocked(Lcom/android/server/print/RemotePrintService;)V

    .line 1083
    :cond_12
    return-void
.end method

.method private failActivePrintJobsForService(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "serviceName"    # Landroid/content/ComponentName;

    .line 1101
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1102
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/android/server/print/-$$Lambda$UserState$HoM_sy_T_4RiQGYcbixewHZ2IMA;->INSTANCE:Lcom/android/server/print/-$$Lambda$UserState$HoM_sy_T_4RiQGYcbixewHZ2IMA;

    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1b

    .line 1105
    :cond_18
    invoke-direct {p0, p1}, Lcom/android/server/print/UserState;->failScheduledPrintJobsForServiceInternal(Landroid/content/ComponentName;)V

    .line 1107
    :goto_1b
    return-void
.end method

.method private failScheduledPrintJobsForServiceInternal(Landroid/content/ComponentName;)V
    .registers 13
    .param p1, "serviceName"    # Landroid/content/ComponentName;

    .line 1110
    iget-object v0, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    const/4 v1, -0x4

    const/4 v2, -0x2

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/print/RemotePrintSpooler;->getPrintJobInfos(Landroid/content/ComponentName;II)Ljava/util/List;

    move-result-object v0

    .line 1112
    .local v0, "printJobs":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    if-nez v0, :cond_b

    .line 1113
    return-void

    .line 1115
    :cond_b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1117
    .local v1, "identity":J
    :try_start_f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 1118
    .local v3, "printJobCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_14
    if-ge v4, v3, :cond_32

    .line 1119
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/print/PrintJobInfo;

    .line 1120
    .local v5, "printJob":Landroid/print/PrintJobInfo;
    iget-object v6, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    invoke-virtual {v5}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v7

    const/4 v8, 0x6

    iget-object v9, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    const v10, 0x10405b9

    .line 1121
    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1120
    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/print/RemotePrintSpooler;->setPrintJobState(Landroid/print/PrintJobId;ILjava/lang/String;)Z
    :try_end_2f
    .catchall {:try_start_f .. :try_end_2f} :catchall_37

    .line 1118
    .end local v5    # "printJob":Landroid/print/PrintJobInfo;
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 1124
    .end local v3    # "printJobCount":I
    .end local v4    # "i":I
    :cond_32
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1125
    nop

    .line 1126
    return-void

    .line 1124
    :catchall_37
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private getInstalledComponents()Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 1007
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1009
    .local v0, "installedComponents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    iget-object v1, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 1010
    .local v1, "installedCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    if-ge v2, v1, :cond_2d

    .line 1011
    iget-object v3, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/printservice/PrintServiceInfo;

    invoke-virtual {v3}, Landroid/printservice/PrintServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 1012
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1015
    .local v4, "serviceName":Landroid/content/ComponentName;
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1010
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v4    # "serviceName":Landroid/content/ComponentName;
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 1018
    .end local v2    # "i":I
    :cond_2d
    return-object v0
.end method

.method private handleDispatchPrintJobStateChanged(Landroid/print/PrintJobId;Ljava/util/function/IntSupplier;)V
    .registers 11
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .param p2, "appIdSupplier"    # Ljava/util/function/IntSupplier;

    .line 1136
    invoke-interface {p2}, Ljava/util/function/IntSupplier;->getAsInt()I

    move-result v0

    .line 1138
    .local v0, "appId":I
    iget-object v1, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1139
    :try_start_7
    iget-object v2, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    if-nez v2, :cond_d

    .line 1140
    monitor-exit v1

    return-void

    .line 1142
    :cond_d
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1143
    .local v2, "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;>;"
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_3d

    .line 1144
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 1145
    .local v1, "recordCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1a
    if-ge v3, v1, :cond_3c

    .line 1146
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;

    .line 1147
    .local v4, "record":Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;
    iget v5, v4, Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;->appId:I

    const/4 v6, -0x2

    if-eq v5, v6, :cond_2b

    iget v5, v4, Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;->appId:I

    if-ne v5, v0, :cond_39

    .line 1150
    :cond_2b
    :try_start_2b
    iget-object v5, v4, Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;->listener:Landroid/print/IPrintJobStateChangeListener;

    invoke-interface {v5, p1}, Landroid/print/IPrintJobStateChangeListener;->onPrintJobStateChanged(Landroid/print/PrintJobId;)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_30} :catch_31

    .line 1153
    goto :goto_39

    .line 1151
    :catch_31
    move-exception v5

    .line 1152
    .local v5, "re":Landroid/os/RemoteException;
    const-string v6, "UserState"

    const-string v7, "Error notifying for print job state change"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1145
    .end local v4    # "record":Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;
    .end local v5    # "re":Landroid/os/RemoteException;
    :cond_39
    :goto_39
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 1156
    .end local v3    # "i":I
    :cond_3c
    return-void

    .line 1143
    .end local v1    # "recordCount":I
    .end local v2    # "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;>;"
    :catchall_3d
    move-exception v2

    :try_start_3e
    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw v2
.end method

.method private handleDispatchPrintServiceRecommendationsUpdated(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/printservice/recommendation/RecommendationInfo;",
            ">;)V"
        }
    .end annotation

    .line 1181
    .local p1, "recommendations":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/recommendation/RecommendationInfo;>;"
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1182
    :try_start_3
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsChangeListenerRecords:Ljava/util/List;

    if-nez v1, :cond_9

    .line 1183
    monitor-exit v0

    return-void

    .line 1185
    :cond_9
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsChangeListenerRecords:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1187
    .local v1, "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/print/UserState$ListenerRecord<Landroid/printservice/recommendation/IRecommendationsChangeListener;>;>;"
    iput-object p1, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendations:Ljava/util/List;

    .line 1188
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_34

    .line 1189
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 1190
    .local v0, "recordCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_18
    if-ge v2, v0, :cond_33

    .line 1191
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/print/UserState$ListenerRecord;

    .line 1194
    .local v3, "record":Lcom/android/server/print/UserState$ListenerRecord;, "Lcom/android/server/print/UserState$ListenerRecord<Landroid/printservice/recommendation/IRecommendationsChangeListener;>;"
    :try_start_20
    iget-object v4, v3, Lcom/android/server/print/UserState$ListenerRecord;->listener:Landroid/os/IInterface;

    check-cast v4, Landroid/printservice/recommendation/IRecommendationsChangeListener;

    invoke-interface {v4}, Landroid/printservice/recommendation/IRecommendationsChangeListener;->onRecommendationsChanged()V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_27} :catch_28

    .line 1197
    goto :goto_30

    .line 1195
    :catch_28
    move-exception v4

    .line 1196
    .local v4, "re":Landroid/os/RemoteException;
    const-string v5, "UserState"

    const-string v6, "Error notifying for print service recommendations change"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1190
    .end local v3    # "record":Lcom/android/server/print/UserState$ListenerRecord;, "Lcom/android/server/print/UserState$ListenerRecord<Landroid/printservice/recommendation/IRecommendationsChangeListener;>;"
    .end local v4    # "re":Landroid/os/RemoteException;
    :goto_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 1199
    .end local v2    # "i":I
    :cond_33
    return-void

    .line 1188
    .end local v0    # "recordCount":I
    .end local v1    # "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/print/UserState$ListenerRecord<Landroid/printservice/recommendation/IRecommendationsChangeListener;>;>;"
    :catchall_34
    move-exception v1

    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v1
.end method

.method private handleDispatchPrintServicesChanged()V
    .registers 8

    .line 1160
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1161
    :try_start_3
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrintServicesChangeListenerRecords:Ljava/util/List;

    if-nez v1, :cond_9

    .line 1162
    monitor-exit v0

    return-void

    .line 1164
    :cond_9
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/print/UserState;->mPrintServicesChangeListenerRecords:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1165
    .local v1, "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/print/UserState$ListenerRecord<Landroid/print/IPrintServicesChangeListener;>;>;"
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_32

    .line 1166
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 1167
    .local v0, "recordCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_16
    if-ge v2, v0, :cond_31

    .line 1168
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/print/UserState$ListenerRecord;

    .line 1171
    .local v3, "record":Lcom/android/server/print/UserState$ListenerRecord;, "Lcom/android/server/print/UserState$ListenerRecord<Landroid/print/IPrintServicesChangeListener;>;"
    :try_start_1e
    iget-object v4, v3, Lcom/android/server/print/UserState$ListenerRecord;->listener:Landroid/os/IInterface;

    check-cast v4, Landroid/print/IPrintServicesChangeListener;

    invoke-interface {v4}, Landroid/print/IPrintServicesChangeListener;->onPrintServicesChanged()V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_25} :catch_26

    .line 1174
    goto :goto_2e

    .line 1172
    :catch_26
    move-exception v4

    .line 1173
    .local v4, "re":Landroid/os/RemoteException;
    const-string v5, "UserState"

    const-string v6, "Error notifying for print services change"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1167
    .end local v3    # "record":Lcom/android/server/print/UserState$ListenerRecord;, "Lcom/android/server/print/UserState$ListenerRecord<Landroid/print/IPrintServicesChangeListener;>;"
    .end local v4    # "re":Landroid/os/RemoteException;
    :goto_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 1176
    .end local v2    # "i":I
    :cond_31
    return-void

    .line 1165
    .end local v0    # "recordCount":I
    .end local v1    # "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/print/UserState$ListenerRecord<Landroid/print/IPrintServicesChangeListener;>;>;"
    :catchall_32
    move-exception v1

    :try_start_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v1
.end method

.method public static synthetic lambda$HoM_sy_T_4RiQGYcbixewHZ2IMA(Lcom/android/server/print/UserState;Landroid/content/ComponentName;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/print/UserState;->failScheduledPrintJobsForServiceInternal(Landroid/content/ComponentName;)V

    return-void
.end method

.method public static synthetic lambda$LdWYUAKz4cbWqoxOD4oZ_ZslKdg(Lcom/android/server/print/UserState;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/print/UserState;->handleDispatchPrintServicesChanged()V

    return-void
.end method

.method public static synthetic lambda$d-WQxYwbHYb6N0le5ohwQsWVdjw(Lcom/android/server/print/UserState;Landroid/print/PrintJobId;Ljava/util/function/IntSupplier;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/print/UserState;->handleDispatchPrintJobStateChanged(Landroid/print/PrintJobId;Ljava/util/function/IntSupplier;)V

    return-void
.end method

.method public static synthetic lambda$f3loorfBpq9Tu3Vl5vt4Ul321ok(Lcom/android/server/print/UserState;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/print/UserState;->handleDispatchPrintServiceRecommendationsUpdated(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic lambda$lM4y7oOfdlEk7JJ3u_zy-rL_-YI(Lcom/android/server/print/UserState;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/print/UserState;->onConfigurationChanged()V

    return-void
.end method

.method private onConfigurationChanged()V
    .registers 3

    .line 1202
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1203
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/print/UserState;->onConfigurationChangedLocked()V

    .line 1204
    monitor-exit v0

    .line 1205
    return-void

    .line 1204
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method private onConfigurationChangedLocked()V
    .registers 12

    .line 1043
    invoke-direct {p0}, Lcom/android/server/print/UserState;->getInstalledComponents()Ljava/util/ArrayList;

    move-result-object v0

    .line 1045
    .local v0, "installedComponents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1046
    .local v1, "installedCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v1, :cond_43

    .line 1047
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 1049
    .local v3, "serviceName":Landroid/content/ComponentName;
    iget-object v4, p0, Lcom/android/server/print/UserState;->mDisabledServices:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_33

    .line 1050
    iget-object v4, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_40

    .line 1051
    new-instance v10, Lcom/android/server/print/RemotePrintService;

    iget-object v5, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    iget v7, p0, Lcom/android/server/print/UserState;->mUserId:I

    iget-object v8, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    move-object v4, v10

    move-object v6, v3

    move-object v9, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/print/RemotePrintService;-><init>(Landroid/content/Context;Landroid/content/ComponentName;ILcom/android/server/print/RemotePrintSpooler;Lcom/android/server/print/RemotePrintService$PrintServiceCallbacks;)V

    .line 1053
    .local v4, "service":Lcom/android/server/print/RemotePrintService;
    invoke-direct {p0, v4}, Lcom/android/server/print/UserState;->addServiceLocked(Lcom/android/server/print/RemotePrintService;)V

    .line 1054
    .end local v4    # "service":Lcom/android/server/print/RemotePrintService;
    goto :goto_40

    .line 1056
    :cond_33
    iget-object v4, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/print/RemotePrintService;

    .line 1057
    .restart local v4    # "service":Lcom/android/server/print/RemotePrintService;
    if-eqz v4, :cond_40

    .line 1058
    invoke-direct {p0, v4}, Lcom/android/server/print/UserState;->removeServiceLocked(Lcom/android/server/print/RemotePrintService;)V

    .line 1046
    .end local v3    # "serviceName":Landroid/content/ComponentName;
    .end local v4    # "service":Lcom/android/server/print/RemotePrintService;
    :cond_40
    :goto_40
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1063
    .end local v2    # "i":I
    :cond_43
    iget-object v2, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    .line 1064
    invoke-virtual {v2}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1065
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/server/print/RemotePrintService;>;>;"
    :goto_4d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_72

    .line 1066
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1067
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/server/print/RemotePrintService;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1068
    .local v4, "serviceName":Landroid/content/ComponentName;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/print/RemotePrintService;

    .line 1069
    .local v5, "service":Lcom/android/server/print/RemotePrintService;
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_71

    .line 1070
    invoke-direct {p0, v5}, Lcom/android/server/print/UserState;->removeServiceLocked(Lcom/android/server/print/RemotePrintService;)V

    .line 1071
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 1073
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/server/print/RemotePrintService;>;"
    .end local v4    # "serviceName":Landroid/content/ComponentName;
    .end local v5    # "service":Lcom/android/server/print/RemotePrintService;
    :cond_71
    goto :goto_4d

    .line 1075
    :cond_72
    invoke-virtual {p0}, Lcom/android/server/print/UserState;->onPrintServicesChanged()V

    .line 1076
    return-void
.end method

.method private readConfigurationLocked()V
    .registers 1

    .line 882
    invoke-direct {p0}, Lcom/android/server/print/UserState;->readInstalledPrintServicesLocked()V

    .line 883
    invoke-direct {p0}, Lcom/android/server/print/UserState;->readDisabledPrintServicesLocked()V

    .line 884
    return-void
.end method

.method private readDisabledPrintServicesLocked()V
    .registers 3

    .line 957
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 958
    .local v0, "tempDisabledServiceNameSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    const-string v1, "disabled_print_services"

    invoke-direct {p0, v1, v0}, Lcom/android/server/print/UserState;->readPrintServicesFromSettingLocked(Ljava/lang/String;Ljava/util/Set;)V

    .line 960
    iget-object v1, p0, Lcom/android/server/print/UserState;->mDisabledServices:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 961
    iget-object v1, p0, Lcom/android/server/print/UserState;->mDisabledServices:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 962
    iget-object v1, p0, Lcom/android/server/print/UserState;->mDisabledServices:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 964
    :cond_1c
    return-void
.end method

.method private readInstalledPrintServicesLocked()V
    .registers 12

    .line 887
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 889
    .local v0, "tempPrintServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/printservice/PrintServiceInfo;>;"
    const v1, 0x10000084

    .line 891
    .local v1, "queryIntentFlags":I
    iget-boolean v2, p0, Lcom/android/server/print/UserState;->mIsInstantServiceAllowed:Z

    if-eqz v2, :cond_f

    .line 892
    const/high16 v2, 0x800000

    or-int/2addr v1, v2

    .line 895
    :cond_f
    iget-object v2, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/print/UserState;->mQueryIntent:Landroid/content/Intent;

    iget v4, p0, Lcom/android/server/print/UserState;->mUserId:I

    .line 896
    invoke-virtual {v2, v3, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v2

    .line 898
    .local v2, "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 899
    .local v3, "installedCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    move v5, v4

    move v4, v3

    .local v4, "count":I
    .local v5, "i":I
    :goto_24
    if-ge v5, v4, :cond_76

    .line 900
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 901
    .local v6, "installedService":Landroid/content/pm/ResolveInfo;
    const-string v7, "android.permission.BIND_PRINT_SERVICE"

    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6a

    .line 903
    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    .local v7, "serviceName":Landroid/content/ComponentName;
    const-string v8, "UserState"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Skipping print service "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 907
    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " since it does not require permission "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "android.permission.BIND_PRINT_SERVICE"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 906
    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    goto :goto_73

    .line 912
    .end local v7    # "serviceName":Landroid/content/ComponentName;
    :cond_6a
    iget-object v7, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    invoke-static {v7, v6}, Landroid/printservice/PrintServiceInfo;->create(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)Landroid/printservice/PrintServiceInfo;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 899
    .end local v6    # "installedService":Landroid/content/pm/ResolveInfo;
    :goto_73
    add-int/lit8 v5, v5, 0x1

    goto :goto_24

    .line 915
    .end local v4    # "count":I
    .end local v5    # "i":I
    :cond_76
    iget-object v4, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 916
    iget-object v4, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 917
    return-void
.end method

.method private readPrintServicesFromSettingLocked(Ljava/lang/String;Ljava/util/Set;)V
    .registers 7
    .param p1, "setting"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .line 968
    .local p2, "outServiceNames":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    iget-object v0, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/server/print/UserState;->mUserId:I

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 970
    .local v0, "settingValue":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_32

    .line 971
    iget-object v1, p0, Lcom/android/server/print/UserState;->mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 972
    .local v1, "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v1, v0}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 973
    :goto_17
    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 974
    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v2

    .line 975
    .local v2, "string":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 976
    goto :goto_17

    .line 978
    :cond_28
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    .line 979
    .local v3, "componentName":Landroid/content/ComponentName;
    if-eqz v3, :cond_31

    .line 980
    invoke-interface {p2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 982
    .end local v2    # "string":Ljava/lang/String;
    .end local v3    # "componentName":Landroid/content/ComponentName;
    :cond_31
    goto :goto_17

    .line 984
    .end local v1    # "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    :cond_32
    return-void
.end method

.method private removeServiceLocked(Lcom/android/server/print/RemotePrintService;)V
    .registers 3
    .param p1, "service"    # Lcom/android/server/print/RemotePrintService;

    .line 1087
    invoke-virtual {p1}, Lcom/android/server/print/RemotePrintService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/print/UserState;->failActivePrintJobsForService(Landroid/content/ComponentName;)V

    .line 1089
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    if-eqz v0, :cond_11

    .line 1090
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-virtual {v0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->onServiceRemovedLocked(Lcom/android/server/print/RemotePrintService;)V

    goto :goto_14

    .line 1093
    :cond_11
    invoke-virtual {p1}, Lcom/android/server/print/RemotePrintService;->destroy()V

    .line 1095
    :goto_14
    return-void
.end method

.method private throwIfDestroyedLocked()V
    .registers 3

    .line 1129
    iget-boolean v0, p0, Lcom/android/server/print/UserState;->mDestroyed:Z

    if-nez v0, :cond_5

    .line 1132
    return-void

    .line 1130
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot interact with a destroyed instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private upgradePersistentStateIfNeeded()V
    .registers 9

    .line 923
    iget-object v0, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enabled_print_services"

    iget v2, p0, Lcom/android/server/print/UserState;->mUserId:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 928
    .local v0, "enabledSettingValue":Ljava/lang/String;
    if-eqz v0, :cond_51

    .line 929
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 930
    .local v1, "enabledServiceNameSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    const-string v2, "enabled_print_services"

    invoke-direct {p0, v2, v1}, Lcom/android/server/print/UserState;->readPrintServicesFromSettingLocked(Ljava/lang/String;Ljava/util/Set;)V

    .line 933
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 934
    .local v2, "disabledServices":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    iget-object v3, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 935
    .local v3, "numInstalledServices":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_26
    if-ge v4, v3, :cond_40

    .line 936
    iget-object v5, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/printservice/PrintServiceInfo;

    invoke-virtual {v5}, Landroid/printservice/PrintServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    .line 937
    .local v5, "serviceName":Landroid/content/ComponentName;
    invoke-interface {v1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3d

    .line 938
    invoke-virtual {v2, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 935
    .end local v5    # "serviceName":Landroid/content/ComponentName;
    :cond_3d
    add-int/lit8 v4, v4, 0x1

    goto :goto_26

    .line 942
    .end local v4    # "i":I
    :cond_40
    invoke-direct {p0, v2}, Lcom/android/server/print/UserState;->writeDisabledPrintServicesLocked(Ljava/util/Set;)V

    .line 946
    iget-object v4, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "enabled_print_services"

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/server/print/UserState;->mUserId:I

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 949
    .end local v1    # "enabledServiceNameSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    .end local v2    # "disabledServices":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    .end local v3    # "numInstalledServices":I
    :cond_51
    return-void
.end method

.method private writeDisabledPrintServicesLocked(Ljava/util/Set;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .line 990
    .local p1, "disabledServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 991
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 992
    .local v2, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_20

    .line 993
    const/16 v3, 0x3a

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 995
    :cond_20
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 996
    .end local v2    # "componentName":Landroid/content/ComponentName;
    goto :goto_9

    .line 997
    :cond_28
    iget-object v1, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "disabled_print_services"

    .line 998
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/android/server/print/UserState;->mUserId:I

    .line 997
    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 999
    return-void
.end method


# virtual methods
.method public addPrintJobStateChangeListener(Landroid/print/IPrintJobStateChangeListener;I)V
    .registers 6
    .param p1, "listener"    # Landroid/print/IPrintJobStateChangeListener;
    .param p2, "appId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 567
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 568
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 569
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    if-nez v1, :cond_11

    .line 570
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    .line 573
    :cond_11
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    new-instance v2, Lcom/android/server/print/UserState$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/print/UserState$2;-><init>(Lcom/android/server/print/UserState;Landroid/print/IPrintJobStateChangeListener;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 584
    monitor-exit v0

    .line 585
    return-void

    .line 584
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public addPrintServiceRecommendationsChangeListener(Landroid/printservice/recommendation/IRecommendationsChangeListener;)V
    .registers 6
    .param p1, "listener"    # Landroid/printservice/recommendation/IRecommendationsChangeListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 654
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 655
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 656
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsChangeListenerRecords:Ljava/util/List;

    if-nez v1, :cond_20

    .line 657
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsChangeListenerRecords:Ljava/util/List;

    .line 659
    new-instance v1, Lcom/android/server/print/RemotePrintServiceRecommendationService;

    iget-object v2, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/server/print/UserState;->mUserId:I

    .line 661
    invoke-static {v3}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v3

    invoke-direct {v1, v2, v3, p0}, Lcom/android/server/print/RemotePrintServiceRecommendationService;-><init>(Landroid/content/Context;Landroid/os/UserHandle;Lcom/android/server/print/RemotePrintServiceRecommendationService$RemotePrintServiceRecommendationServiceCallbacks;)V

    iput-object v1, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsService:Lcom/android/server/print/RemotePrintServiceRecommendationService;

    .line 663
    :cond_20
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsChangeListenerRecords:Ljava/util/List;

    new-instance v2, Lcom/android/server/print/UserState$4;

    invoke-direct {v2, p0, p1}, Lcom/android/server/print/UserState$4;-><init>(Lcom/android/server/print/UserState;Landroid/printservice/recommendation/IRecommendationsChangeListener;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 674
    monitor-exit v0

    .line 675
    return-void

    .line 674
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method public addPrintServicesChangeListener(Landroid/print/IPrintServicesChangeListener;)V
    .registers 5
    .param p1, "listener"    # Landroid/print/IPrintServicesChangeListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 611
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 612
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 613
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrintServicesChangeListenerRecords:Ljava/util/List;

    if-nez v1, :cond_11

    .line 614
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/print/UserState;->mPrintServicesChangeListenerRecords:Ljava/util/List;

    .line 616
    :cond_11
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrintServicesChangeListenerRecords:Ljava/util/List;

    new-instance v2, Lcom/android/server/print/UserState$3;

    invoke-direct {v2, p0, p1}, Lcom/android/server/print/UserState$3;-><init>(Lcom/android/server/print/UserState;Landroid/print/IPrintServicesChangeListener;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 627
    monitor-exit v0

    .line 628
    return-void

    .line 627
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public cancelPrintJob(Landroid/print/PrintJobId;I)V
    .registers 9
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .param p2, "appId"    # I

    .line 348
    iget-object v0, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/print/RemotePrintSpooler;->getPrintJobInfo(Landroid/print/PrintJobId;I)Landroid/print/PrintJobInfo;

    move-result-object v0

    .line 349
    .local v0, "printJobInfo":Landroid/print/PrintJobInfo;
    if-nez v0, :cond_9

    .line 350
    return-void

    .line 354
    :cond_9
    iget-object v1, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/android/server/print/RemotePrintSpooler;->setPrintJobCancelling(Landroid/print/PrintJobId;Z)V

    .line 356
    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getState()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_39

    .line 357
    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getPrinterId()Landroid/print/PrinterId;

    move-result-object v1

    .line 359
    .local v1, "printerId":Landroid/print/PrinterId;
    if-eqz v1, :cond_38

    .line 360
    invoke-virtual {v1}, Landroid/print/PrinterId;->getServiceName()Landroid/content/ComponentName;

    move-result-object v2

    .line 361
    .local v2, "printServiceName":Landroid/content/ComponentName;
    const/4 v3, 0x0

    .line 362
    .local v3, "printService":Lcom/android/server/print/RemotePrintService;
    iget-object v4, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 363
    :try_start_24
    iget-object v5, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/print/RemotePrintService;

    move-object v3, v5

    .line 364
    monitor-exit v4
    :try_end_2e
    .catchall {:try_start_24 .. :try_end_2e} :catchall_35

    .line 365
    if-nez v3, :cond_31

    .line 366
    return-void

    .line 368
    :cond_31
    invoke-virtual {v3, v0}, Lcom/android/server/print/RemotePrintService;->onRequestCancelPrintJob(Landroid/print/PrintJobInfo;)V

    .end local v1    # "printerId":Landroid/print/PrinterId;
    .end local v2    # "printServiceName":Landroid/content/ComponentName;
    .end local v3    # "printService":Lcom/android/server/print/RemotePrintService;
    goto :goto_38

    .line 364
    .restart local v1    # "printerId":Landroid/print/PrinterId;
    .restart local v2    # "printServiceName":Landroid/content/ComponentName;
    .restart local v3    # "printService":Lcom/android/server/print/RemotePrintService;
    :catchall_35
    move-exception v5

    :try_start_36
    monitor-exit v4
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw v5

    .line 370
    .end local v1    # "printerId":Landroid/print/PrinterId;
    .end local v2    # "printServiceName":Landroid/content/ComponentName;
    .end local v3    # "printService":Lcom/android/server/print/RemotePrintService;
    :cond_38
    :goto_38
    goto :goto_40

    .line 373
    :cond_39
    iget-object v1, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/server/print/RemotePrintSpooler;->setPrintJobState(Landroid/print/PrintJobId;ILjava/lang/String;)Z

    .line 375
    :goto_40
    return-void
.end method

.method public createPrinterDiscoverySession(Landroid/print/IPrinterDiscoveryObserver;)V
    .registers 4
    .param p1, "observer"    # Landroid/print/IPrinterDiscoveryObserver;

    .line 456
    iget-object v0, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    invoke-virtual {v0}, Lcom/android/server/print/RemotePrintSpooler;->clearCustomPrinterIconCache()V

    .line 458
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 459
    :try_start_8
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 461
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    if-nez v1, :cond_1c

    .line 463
    new-instance v1, Lcom/android/server/print/UserState$1;

    invoke-direct {v1, p0}, Lcom/android/server/print/UserState$1;-><init>(Lcom/android/server/print/UserState;)V

    iput-object v1, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    .line 470
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-virtual {v1, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->addObserverLocked(Landroid/print/IPrinterDiscoveryObserver;)V

    goto :goto_21

    .line 473
    :cond_1c
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-virtual {v1, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->addObserverLocked(Landroid/print/IPrinterDiscoveryObserver;)V

    .line 475
    :goto_21
    monitor-exit v0

    .line 476
    return-void

    .line 475
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_23

    throw v1
.end method

.method public destroyLocked()V
    .registers 3

    .line 807
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 808
    iget-object v0, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    invoke-virtual {v0}, Lcom/android/server/print/RemotePrintSpooler;->destroy()V

    .line 809
    iget-object v0, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/print/RemotePrintService;

    .line 810
    .local v1, "service":Lcom/android/server/print/RemotePrintService;
    invoke-virtual {v1}, Lcom/android/server/print/RemotePrintService;->destroy()V

    .line 811
    .end local v1    # "service":Lcom/android/server/print/RemotePrintService;
    goto :goto_12

    .line 812
    :cond_22
    iget-object v0, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 813
    iget-object v0, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 814
    iget-object v0, p0, Lcom/android/server/print/UserState;->mDisabledServices:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 815
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    if-eqz v0, :cond_3d

    .line 816
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-virtual {v0}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->destroyLocked()V

    .line 817
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    .line 819
    :cond_3d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/print/UserState;->mDestroyed:Z

    .line 820
    return-void
.end method

.method public destroyPrinterDiscoverySession(Landroid/print/IPrinterDiscoveryObserver;)V
    .registers 4
    .param p1, "observer"    # Landroid/print/IPrinterDiscoveryObserver;

    .line 479
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 481
    :try_start_3
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    if-nez v1, :cond_9

    .line 482
    monitor-exit v0

    return-void

    .line 485
    :cond_9
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-virtual {v1, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->removeObserverLocked(Landroid/print/IPrinterDiscoveryObserver;)V

    .line 486
    monitor-exit v0

    .line 487
    return-void

    .line 486
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public dump(Lcom/android/internal/util/dump/DualDumpOutputStream;)V
    .registers 16
    .param p1, "dumpStream"    # Lcom/android/internal/util/dump/DualDumpOutputStream;

    .line 823
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 824
    :try_start_3
    const-string/jumbo v1, "user_id"

    const-wide v2, 0x10500000001L

    iget v4, p0, Lcom/android/server/print/UserState;->mUserId:I

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 826
    iget-object v1, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 827
    .local v1, "installedServiceCount":I
    const/4 v2, 0x0

    move v3, v2

    .line 827
    .local v3, "i":I
    :goto_18
    if-ge v3, v1, :cond_79

    .line 828
    const-string v4, "installed_services"

    const-wide v5, 0x20b00000002L

    invoke-virtual {p1, v4, v5, v6}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v4

    .line 830
    .local v4, "token":J
    iget-object v6, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/printservice/PrintServiceInfo;

    .line 832
    .local v6, "installedService":Landroid/printservice/PrintServiceInfo;
    invoke-virtual {v6}, Landroid/printservice/PrintServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v7

    .line 833
    .local v7, "resolveInfo":Landroid/content/pm/ResolveInfo;
    const-string v8, "component_name"

    const-wide v9, 0x10b00000001L

    new-instance v11, Landroid/content/ComponentName;

    iget-object v12, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v12, v12, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v13, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v13, v13, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v11, v12, v13}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v8, v9, v10, v11}, Lcom/android/internal/util/dump/DumpUtils;->writeComponentName(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/content/ComponentName;)V

    .line 838
    const-string/jumbo v8, "settings_activity"

    const-wide v9, 0x10900000002L

    .line 840
    invoke-virtual {v6}, Landroid/printservice/PrintServiceInfo;->getSettingsActivityName()Ljava/lang/String;

    move-result-object v11

    .line 838
    invoke-static {p1, v8, v9, v10, v11}, Lcom/android/internal/util/dump/DumpUtils;->writeStringIfNotNull(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLjava/lang/String;)V

    .line 841
    const-string v8, "add_printers_activity"

    const-wide v9, 0x10900000003L

    .line 843
    invoke-virtual {v6}, Landroid/printservice/PrintServiceInfo;->getAddPrintersActivityName()Ljava/lang/String;

    move-result-object v11

    .line 841
    invoke-static {p1, v8, v9, v10, v11}, Lcom/android/internal/util/dump/DumpUtils;->writeStringIfNotNull(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLjava/lang/String;)V

    .line 844
    const-string v8, "advanced_options_activity"

    const-wide v9, 0x10900000004L

    .line 846
    invoke-virtual {v6}, Landroid/printservice/PrintServiceInfo;->getAdvancedOptionsActivityName()Ljava/lang/String;

    move-result-object v11

    .line 844
    invoke-static {p1, v8, v9, v10, v11}, Lcom/android/internal/util/dump/DumpUtils;->writeStringIfNotNull(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLjava/lang/String;)V

    .line 848
    invoke-virtual {p1, v4, v5}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 827
    .end local v4    # "token":J
    .end local v6    # "installedService":Landroid/printservice/PrintServiceInfo;
    .end local v7    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 851
    .end local v3    # "i":I
    :cond_79
    iget-object v3, p0, Lcom/android/server/print/UserState;->mDisabledServices:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_96

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 852
    .local v4, "disabledService":Landroid/content/ComponentName;
    const-string v5, "disabled_services"

    const-wide v6, 0x20b00000003L

    invoke-static {p1, v5, v6, v7, v4}, Lcom/android/internal/util/dump/DumpUtils;->writeComponentName(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/content/ComponentName;)V

    .line 854
    .end local v4    # "disabledService":Landroid/content/ComponentName;
    goto :goto_7f

    .line 856
    :cond_96
    iget-object v3, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 857
    .local v3, "activeServiceCount":I
    nop

    .line 857
    .local v2, "i":I
    :goto_9d
    if-ge v2, v3, :cond_bb

    .line 858
    const-string v4, "actives_services"

    const-wide v5, 0x20b00000004L

    invoke-virtual {p1, v4, v5, v6}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v4

    .line 860
    .local v4, "token":J
    iget-object v6, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v6, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/print/RemotePrintService;

    invoke-virtual {v6, p1}, Lcom/android/server/print/RemotePrintService;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;)V

    .line 861
    invoke-virtual {p1, v4, v5}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 857
    .end local v4    # "token":J
    add-int/lit8 v2, v2, 0x1

    goto :goto_9d

    .line 864
    .end local v2    # "i":I
    :cond_bb
    iget-object v2, p0, Lcom/android/server/print/UserState;->mPrintJobForAppCache:Lcom/android/server/print/UserState$PrintJobForAppCache;

    invoke-virtual {v2, p1}, Lcom/android/server/print/UserState$PrintJobForAppCache;->dumpLocked(Lcom/android/internal/util/dump/DualDumpOutputStream;)V

    .line 866
    iget-object v2, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    if-eqz v2, :cond_d7

    .line 867
    const-string v2, "discovery_service"

    const-wide v4, 0x20b00000006L

    invoke-virtual {p1, v2, v4, v5}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v4

    .line 869
    .restart local v4    # "token":J
    iget-object v2, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-virtual {v2, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->dumpLocked(Lcom/android/internal/util/dump/DualDumpOutputStream;)V

    .line 870
    invoke-virtual {p1, v4, v5}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 873
    .end local v1    # "installedServiceCount":I
    .end local v3    # "activeServiceCount":I
    .end local v4    # "token":J
    :cond_d7
    monitor-exit v0
    :try_end_d8
    .catchall {:try_start_3 .. :try_end_d8} :catchall_ed

    .line 875
    const-string/jumbo v0, "print_spooler_state"

    const-wide v1, 0x10b00000007L

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v0

    .line 877
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    invoke-virtual {v2, p1}, Lcom/android/server/print/RemotePrintSpooler;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;)V

    .line 878
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 879
    return-void

    .line 873
    .end local v0    # "token":J
    :catchall_ed
    move-exception v1

    :try_start_ee
    monitor-exit v0
    :try_end_ef
    .catchall {:try_start_ee .. :try_end_ef} :catchall_ed

    throw v1
.end method

.method public getBindInstantServiceAllowed()Z
    .registers 2

    .line 1208
    iget-boolean v0, p0, Lcom/android/server/print/UserState;->mIsInstantServiceAllowed:Z

    return v0
.end method

.method public getCustomPrinterIcon(Landroid/print/PrinterId;)Landroid/graphics/drawable/Icon;
    .registers 5
    .param p1, "printerId"    # Landroid/print/PrinterId;

    .line 335
    iget-object v0, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    invoke-virtual {v0, p1}, Lcom/android/server/print/RemotePrintSpooler;->getCustomPrinterIcon(Landroid/print/PrinterId;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    .line 337
    .local v0, "icon":Landroid/graphics/drawable/Icon;
    if-nez v0, :cond_19

    .line 338
    iget-object v1, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/print/PrinterId;->getServiceName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/print/RemotePrintService;

    .line 339
    .local v1, "service":Lcom/android/server/print/RemotePrintService;
    if-eqz v1, :cond_19

    .line 340
    invoke-virtual {v1, p1}, Lcom/android/server/print/RemotePrintService;->requestCustomPrinterIcon(Landroid/print/PrinterId;)V

    .line 344
    .end local v1    # "service":Lcom/android/server/print/RemotePrintService;
    :cond_19
    return-object v0
.end method

.method public getPrintJobInfo(Landroid/print/PrintJobId;I)Landroid/print/PrintJobInfo;
    .registers 5
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .param p2, "appId"    # I

    .line 312
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrintJobForAppCache:Lcom/android/server/print/UserState$PrintJobForAppCache;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/print/UserState$PrintJobForAppCache;->getPrintJob(Landroid/print/PrintJobId;I)Landroid/print/PrintJobInfo;

    move-result-object v0

    .line 313
    .local v0, "printJob":Landroid/print/PrintJobInfo;
    if-nez v0, :cond_e

    .line 314
    iget-object v1, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/print/RemotePrintSpooler;->getPrintJobInfo(Landroid/print/PrintJobId;I)Landroid/print/PrintJobInfo;

    move-result-object v0

    .line 316
    :cond_e
    if-eqz v0, :cond_17

    .line 319
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/print/PrintJobInfo;->setTag(Ljava/lang/String;)V

    .line 320
    invoke-virtual {v0, v1}, Landroid/print/PrintJobInfo;->setAdvancedOptions(Landroid/os/Bundle;)V

    .line 322
    :cond_17
    return-object v0
.end method

.method public getPrintJobInfos(I)Ljava/util/List;
    .registers 11
    .param p1, "appId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/print/PrintJobInfo;",
            ">;"
        }
    .end annotation

    .line 272
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrintJobForAppCache:Lcom/android/server/print/UserState$PrintJobForAppCache;

    invoke-virtual {v0, p1}, Lcom/android/server/print/UserState$PrintJobForAppCache;->getPrintJobs(I)Ljava/util/List;

    move-result-object v0

    .line 279
    .local v0, "cachedPrintJobs":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 283
    .local v1, "result":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/print/PrintJobId;Landroid/print/PrintJobInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 284
    .local v2, "cachedPrintJobCount":I
    const/4 v3, 0x0

    move v4, v3

    .local v4, "i":I
    :goto_11
    const/4 v5, 0x0

    if-ge v4, v2, :cond_2a

    .line 285
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/print/PrintJobInfo;

    .line 286
    .local v6, "cachedPrintJob":Landroid/print/PrintJobInfo;
    invoke-virtual {v6}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v7

    invoke-virtual {v1, v7, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    invoke-virtual {v6, v5}, Landroid/print/PrintJobInfo;->setTag(Ljava/lang/String;)V

    .line 290
    invoke-virtual {v6, v5}, Landroid/print/PrintJobInfo;->setAdvancedOptions(Landroid/os/Bundle;)V

    .line 284
    .end local v6    # "cachedPrintJob":Landroid/print/PrintJobInfo;
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 294
    .end local v4    # "i":I
    :cond_2a
    iget-object v4, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6, p1}, Lcom/android/server/print/RemotePrintSpooler;->getPrintJobInfos(Landroid/content/ComponentName;II)Ljava/util/List;

    move-result-object v4

    .line 296
    .local v4, "printJobs":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    if-eqz v4, :cond_50

    .line 297
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    .line 298
    .local v6, "printJobCount":I
    nop

    .local v3, "i":I
    :goto_38
    if-ge v3, v6, :cond_50

    .line 299
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/print/PrintJobInfo;

    .line 300
    .local v7, "printJob":Landroid/print/PrintJobInfo;
    invoke-virtual {v7}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v8

    invoke-virtual {v1, v8, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    invoke-virtual {v7, v5}, Landroid/print/PrintJobInfo;->setTag(Ljava/lang/String;)V

    .line 304
    invoke-virtual {v7, v5}, Landroid/print/PrintJobInfo;->setAdvancedOptions(Landroid/os/Bundle;)V

    .line 298
    .end local v7    # "printJob":Landroid/print/PrintJobInfo;
    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    .line 308
    .end local v3    # "i":I
    .end local v6    # "printJobCount":I
    :cond_50
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v3
.end method

.method public getPrintServiceRecommendations()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/printservice/recommendation/RecommendationInfo;",
            ">;"
        }
    .end annotation

    .line 452
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendations:Ljava/util/List;

    return-object v0
.end method

.method public getPrintServices(I)Ljava/util/List;
    .registers 10
    .param p1, "selectionFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/printservice/PrintServiceInfo;",
            ">;"
        }
    .end annotation

    .line 386
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 387
    const/4 v1, 0x0

    .line 388
    .local v1, "selectedServices":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    :try_start_4
    iget-object v2, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 389
    .local v2, "installedServiceCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_b
    if-ge v3, v2, :cond_51

    .line 390
    iget-object v4, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/printservice/PrintServiceInfo;

    .line 392
    .local v4, "installedService":Landroid/printservice/PrintServiceInfo;
    new-instance v5, Landroid/content/ComponentName;

    .line 393
    invoke-virtual {v4}, Landroid/printservice/PrintServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 394
    invoke-virtual {v4}, Landroid/printservice/PrintServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    .local v5, "componentName":Landroid/content/ComponentName;
    iget-object v6, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v4, v6}, Landroid/printservice/PrintServiceInfo;->setIsEnabled(Z)V

    .line 399
    invoke-virtual {v4}, Landroid/printservice/PrintServiceInfo;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_3e

    .line 400
    and-int/lit8 v6, p1, 0x1

    if-nez v6, :cond_43

    .line 401
    goto :goto_4e

    .line 404
    :cond_3e
    and-int/lit8 v6, p1, 0x2

    if-nez v6, :cond_43

    .line 405
    goto :goto_4e

    .line 409
    :cond_43
    if-nez v1, :cond_4b

    .line 410
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v6

    .line 412
    :cond_4b
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 389
    .end local v4    # "installedService":Landroid/printservice/PrintServiceInfo;
    .end local v5    # "componentName":Landroid/content/ComponentName;
    :goto_4e
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 414
    .end local v3    # "i":I
    :cond_51
    monitor-exit v0

    return-object v1

    .line 415
    .end local v1    # "selectedServices":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    .end local v2    # "installedServiceCount":I
    :catchall_53
    move-exception v1

    monitor-exit v0
    :try_end_55
    .catchall {:try_start_4 .. :try_end_55} :catchall_53

    throw v1
.end method

.method public increasePriority()V
    .registers 2

    .line 183
    iget-object v0, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    invoke-virtual {v0}, Lcom/android/server/print/RemotePrintSpooler;->increasePriority()V

    .line 184
    return-void
.end method

.method public onAllPrintJobsForServiceHandled(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "printService"    # Landroid/content/ComponentName;

    .line 207
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 208
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 209
    iget-object v1, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/print/RemotePrintService;

    .line 210
    .local v1, "service":Lcom/android/server/print/RemotePrintService;
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_15

    .line 211
    if-eqz v1, :cond_14

    .line 212
    invoke-virtual {v1}, Lcom/android/server/print/RemotePrintService;->onAllPrintJobsHandled()V

    .line 214
    :cond_14
    return-void

    .line 210
    .end local v1    # "service":Lcom/android/server/print/RemotePrintService;
    :catchall_15
    move-exception v1

    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public onCustomPrinterIconLoaded(Landroid/print/PrinterId;Landroid/graphics/drawable/Icon;)V
    .registers 5
    .param p1, "printerId"    # Landroid/print/PrinterId;
    .param p2, "icon"    # Landroid/graphics/drawable/Icon;

    .line 760
    iget-object v0, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/print/RemotePrintSpooler;->onCustomPrinterIconLoaded(Landroid/print/PrinterId;Landroid/graphics/drawable/Icon;)V

    .line 762
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 763
    :try_start_8
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 766
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    if-nez v1, :cond_11

    .line 767
    monitor-exit v0

    return-void

    .line 769
    :cond_11
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-virtual {v1, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->onCustomPrinterIconLoadedLocked(Landroid/print/PrinterId;)V

    .line 770
    monitor-exit v0

    .line 771
    return-void

    .line 770
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public onPrintJobQueued(Landroid/print/PrintJobInfo;)V
    .registers 8
    .param p1, "printJob"    # Landroid/print/PrintJobInfo;

    .line 189
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 190
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 191
    invoke-virtual {p1}, Landroid/print/PrintJobInfo;->getPrinterId()Landroid/print/PrinterId;

    move-result-object v1

    invoke-virtual {v1}, Landroid/print/PrinterId;->getServiceName()Landroid/content/ComponentName;

    move-result-object v1

    .line 192
    .local v1, "printServiceName":Landroid/content/ComponentName;
    iget-object v2, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/print/RemotePrintService;

    .end local v1    # "printServiceName":Landroid/content/ComponentName;
    move-object v1, v2

    .line 193
    .local v1, "service":Lcom/android/server/print/RemotePrintService;
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_32

    .line 194
    if-eqz v1, :cond_1e

    .line 195
    invoke-virtual {v1, p1}, Lcom/android/server/print/RemotePrintService;->onPrintJobQueued(Landroid/print/PrintJobInfo;)V

    goto :goto_31

    .line 199
    :cond_1e
    iget-object v0, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    invoke-virtual {p1}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v2

    const/4 v3, 0x6

    iget-object v4, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    const v5, 0x10405b9

    .line 200
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 199
    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/print/RemotePrintSpooler;->setPrintJobState(Landroid/print/PrintJobId;ILjava/lang/String;)Z

    .line 202
    :goto_31
    return-void

    .line 193
    .end local v1    # "service":Lcom/android/server/print/RemotePrintService;
    :catchall_32
    move-exception v1

    :try_start_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v1
.end method

.method public onPrintJobStateChanged(Landroid/print/PrintJobInfo;)V
    .registers 6
    .param p1, "printJob"    # Landroid/print/PrintJobInfo;

    .line 707
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrintJobForAppCache:Lcom/android/server/print/UserState$PrintJobForAppCache;

    invoke-virtual {v0, p1}, Lcom/android/server/print/UserState$PrintJobForAppCache;->onPrintJobStateChanged(Landroid/print/PrintJobInfo;)V

    .line 708
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/android/server/print/-$$Lambda$UserState$d-WQxYwbHYb6N0le5ohwQsWVdjw;->INSTANCE:Lcom/android/server/print/-$$Lambda$UserState$d-WQxYwbHYb6N0le5ohwQsWVdjw;

    .line 710
    invoke-virtual {p1}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v2

    .line 711
    invoke-virtual {p1}, Landroid/print/PrintJobInfo;->getAppId()I

    move-result v3

    invoke-static {v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainSupplier(I)Lcom/android/internal/util/function/pooled/PooledSupplier$OfInt;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/util/function/pooled/PooledSupplier$OfInt;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledSupplier$OfInt;

    move-result-object v3

    .line 708
    invoke-static {v1, p0, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 712
    return-void
.end method

.method public onPrintServiceRecommendationsUpdated(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/printservice/recommendation/RecommendationInfo;",
            ">;)V"
        }
    .end annotation

    .line 721
    .local p1, "recommendations":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/recommendation/RecommendationInfo;>;"
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/android/server/print/-$$Lambda$UserState$f3loorfBpq9Tu3Vl5vt4Ul321ok;->INSTANCE:Lcom/android/server/print/-$$Lambda$UserState$f3loorfBpq9Tu3Vl5vt4Ul321ok;

    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 724
    return-void
.end method

.method public onPrintServicesChanged()V
    .registers 3

    .line 715
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/android/server/print/-$$Lambda$UserState$LdWYUAKz4cbWqoxOD4oZ_ZslKdg;->INSTANCE:Lcom/android/server/print/-$$Lambda$UserState$LdWYUAKz4cbWqoxOD4oZ_ZslKdg;

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 717
    return-void
.end method

.method public onPrintersAdded(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/print/PrinterInfo;",
            ">;)V"
        }
    .end annotation

    .line 728
    .local p1, "printers":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterInfo;>;"
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 729
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 731
    iget-object v1, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 732
    monitor-exit v0

    return-void

    .line 735
    :cond_10
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    if-nez v1, :cond_16

    .line 736
    monitor-exit v0

    return-void

    .line 738
    :cond_16
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-virtual {v1, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->onPrintersAddedLocked(Ljava/util/List;)V

    .line 739
    monitor-exit v0

    .line 740
    return-void

    .line 739
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public onPrintersRemoved(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation

    .line 744
    .local p1, "printerIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 745
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 747
    iget-object v1, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 748
    monitor-exit v0

    return-void

    .line 751
    :cond_10
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    if-nez v1, :cond_16

    .line 752
    monitor-exit v0

    return-void

    .line 754
    :cond_16
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-virtual {v1, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->onPrintersRemovedLocked(Ljava/util/List;)V

    .line 755
    monitor-exit v0

    .line 756
    return-void

    .line 755
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public onServiceDied(Lcom/android/server/print/RemotePrintService;)V
    .registers 7
    .param p1, "service"    # Lcom/android/server/print/RemotePrintService;

    .line 775
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 776
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 778
    iget-object v1, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 779
    monitor-exit v0

    return-void

    .line 782
    :cond_10
    invoke-virtual {p1}, Lcom/android/server/print/RemotePrintService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/print/UserState;->failActivePrintJobsForService(Landroid/content/ComponentName;)V

    .line 783
    invoke-virtual {p1}, Lcom/android/server/print/RemotePrintService;->onAllPrintJobsHandled()V

    .line 785
    iget-object v1, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/server/print/RemotePrintService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 788
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v1

    sget-object v2, Lcom/android/server/print/-$$Lambda$UserState$lM4y7oOfdlEk7JJ3u_zy-rL_-YI;->INSTANCE:Lcom/android/server/print/-$$Lambda$UserState$lM4y7oOfdlEk7JJ3u_zy-rL_-YI;

    invoke-static {v2, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 793
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    if-nez v1, :cond_38

    .line 794
    monitor-exit v0

    return-void

    .line 796
    :cond_38
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-virtual {v1, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->onServiceDiedLocked(Lcom/android/server/print/RemotePrintService;)V

    .line 797
    monitor-exit v0

    .line 798
    return-void

    .line 797
    :catchall_3f
    move-exception v1

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_3 .. :try_end_41} :catchall_3f

    throw v1
.end method

.method public print(Ljava/lang/String;Landroid/print/IPrintDocumentAdapter;Landroid/print/PrintAttributes;Ljava/lang/String;I)Landroid/os/Bundle;
    .registers 23
    .param p1, "printJobName"    # Ljava/lang/String;
    .param p2, "adapter"    # Landroid/print/IPrintDocumentAdapter;
    .param p3, "attributes"    # Landroid/print/PrintAttributes;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "appId"    # I

    move-object/from16 v1, p0

    .line 224
    move/from16 v2, p5

    new-instance v0, Landroid/print/PrintJobInfo;

    invoke-direct {v0}, Landroid/print/PrintJobInfo;-><init>()V

    move-object v3, v0

    .line 225
    .local v3, "printJob":Landroid/print/PrintJobInfo;
    new-instance v0, Landroid/print/PrintJobId;

    invoke-direct {v0}, Landroid/print/PrintJobId;-><init>()V

    invoke-virtual {v3, v0}, Landroid/print/PrintJobInfo;->setId(Landroid/print/PrintJobId;)V

    .line 226
    invoke-virtual {v3, v2}, Landroid/print/PrintJobInfo;->setAppId(I)V

    .line 227
    move-object/from16 v4, p1

    invoke-virtual {v3, v4}, Landroid/print/PrintJobInfo;->setLabel(Ljava/lang/String;)V

    .line 228
    move-object/from16 v5, p3

    invoke-virtual {v3, v5}, Landroid/print/PrintJobInfo;->setAttributes(Landroid/print/PrintAttributes;)V

    .line 229
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/print/PrintJobInfo;->setState(I)V

    .line 230
    invoke-virtual {v3, v0}, Landroid/print/PrintJobInfo;->setCopies(I)V

    .line 231
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Landroid/print/PrintJobInfo;->setCreationTime(J)V

    .line 234
    invoke-static {v3}, Lcom/android/server/print/MiuiPrintManager;->ensureInjected(Landroid/print/PrintJobInfo;)Z

    move-result v6

    .line 238
    .local v6, "injected":Z
    iget-object v0, v1, Lcom/android/server/print/UserState;->mPrintJobForAppCache:Lcom/android/server/print/UserState$PrintJobForAppCache;

    invoke-interface/range {p2 .. p2}, Landroid/print/IPrintDocumentAdapter;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v0, v7, v2, v3}, Lcom/android/server/print/UserState$PrintJobForAppCache;->onPrintJobCreated(Landroid/os/IBinder;ILandroid/print/PrintJobInfo;)Z

    move-result v0

    const/4 v7, 0x0

    if-nez v0, :cond_3f

    .line 241
    return-object v7

    .line 244
    :cond_3f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 246
    .local v8, "identity":J
    :try_start_43
    new-instance v0, Landroid/content/Intent;

    const-string v10, "android.print.PRINT_DIALOG"

    invoke-direct {v0, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 247
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v10, "printjob"

    invoke-virtual {v3}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v11

    invoke-virtual {v11}, Landroid/print/PrintJobId;->flattenToString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 248
    const-string v7, "android.print.intent.extra.EXTRA_PRINT_DOCUMENT_ADAPTER"

    invoke-interface/range {p2 .. p2}, Landroid/print/IPrintDocumentAdapter;->asBinder()Landroid/os/IBinder;

    move-result-object v10

    invoke-virtual {v0, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    .line 249
    const-string v7, "android.print.intent.extra.EXTRA_PRINT_JOB"

    invoke-virtual {v0, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 250
    const-string v7, "android.content.extra.PACKAGE_NAME"
    :try_end_6c
    .catchall {:try_start_43 .. :try_end_6c} :catchall_a2

    move-object/from16 v10, p4

    :try_start_6e
    invoke-virtual {v0, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 253
    invoke-static {v6, v0}, Lcom/android/server/print/MiuiPrintManager;->printInject(ZLandroid/content/Intent;)V

    .line 256
    iget-object v11, v1, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    const/4 v12, 0x0

    const/high16 v14, 0x54000000

    const/4 v15, 0x0

    new-instance v7, Landroid/os/UserHandle;

    iget v13, v1, Lcom/android/server/print/UserState;->mUserId:I

    invoke-direct {v7, v13}, Landroid/os/UserHandle;-><init>(I)V

    move-object v13, v0

    move-object/from16 v16, v7

    invoke-static/range {v11 .. v16}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v7

    .line 259
    invoke-virtual {v7}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v7

    .line 261
    .local v7, "intentSender":Landroid/content/IntentSender;
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 262
    .local v11, "result":Landroid/os/Bundle;
    const-string v12, "android.print.intent.extra.EXTRA_PRINT_JOB"

    invoke-virtual {v11, v12, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 263
    const-string v12, "android.print.intent.extra.EXTRA_PRINT_DIALOG_INTENT"

    invoke-virtual {v11, v12, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_9b
    .catchall {:try_start_6e .. :try_end_9b} :catchall_a0

    .line 265
    nop

    .line 267
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 265
    return-object v11

    .line 267
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v7    # "intentSender":Landroid/content/IntentSender;
    .end local v11    # "result":Landroid/os/Bundle;
    :catchall_a0
    move-exception v0

    goto :goto_a5

    :catchall_a2
    move-exception v0

    move-object/from16 v10, p4

    :goto_a5
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public prunePrintServices()V
    .registers 5

    .line 1027
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1028
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/print/UserState;->getInstalledComponents()Ljava/util/ArrayList;

    move-result-object v1

    .line 1031
    .local v1, "installedComponents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    iget-object v2, p0, Lcom/android/server/print/UserState;->mDisabledServices:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    move-result v2

    .line 1032
    .local v2, "disabledServicesUninstalled":Z
    if-eqz v2, :cond_14

    .line 1033
    iget-object v3, p0, Lcom/android/server/print/UserState;->mDisabledServices:Ljava/util/Set;

    invoke-direct {p0, v3}, Lcom/android/server/print/UserState;->writeDisabledPrintServicesLocked(Ljava/util/Set;)V

    .line 1035
    .end local v2    # "disabledServicesUninstalled":Z
    :cond_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_1b

    .line 1038
    iget-object v0, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    invoke-virtual {v0, v1}, Lcom/android/server/print/RemotePrintSpooler;->pruneApprovedPrintServices(Ljava/util/List;)V

    .line 1040
    return-void

    .line 1035
    .end local v1    # "installedComponents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    :catchall_1b
    move-exception v1

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public removeObsoletePrintJobs()V
    .registers 2

    .line 217
    iget-object v0, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    invoke-virtual {v0}, Lcom/android/server/print/RemotePrintSpooler;->removeObsoletePrintJobs()V

    .line 218
    return-void
.end method

.method public removePrintJobStateChangeListener(Landroid/print/IPrintJobStateChangeListener;)V
    .registers 8
    .param p1, "listener"    # Landroid/print/IPrintJobStateChangeListener;

    .line 588
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 589
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 590
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    if-nez v1, :cond_c

    .line 591
    monitor-exit v0

    return-void

    .line 593
    :cond_c
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 594
    .local v1, "recordCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_13
    if-ge v2, v1, :cond_39

    .line 595
    iget-object v3, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    .line 596
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;

    .line 597
    .local v3, "record":Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;
    iget-object v4, v3, Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;->listener:Landroid/print/IPrintJobStateChangeListener;

    invoke-interface {v4}, Landroid/print/IPrintJobStateChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {p1}, Landroid/print/IPrintJobStateChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 598
    invoke-virtual {v3}, Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;->destroy()V

    .line 599
    iget-object v4, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 600
    goto :goto_39

    .line 594
    .end local v3    # "record":Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;
    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 603
    .end local v2    # "i":I
    :cond_39
    :goto_39
    iget-object v2, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_44

    .line 604
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    .line 606
    .end local v1    # "recordCount":I
    :cond_44
    monitor-exit v0

    .line 607
    return-void

    .line 606
    :catchall_46
    move-exception v1

    monitor-exit v0
    :try_end_48
    .catchall {:try_start_3 .. :try_end_48} :catchall_46

    throw v1
.end method

.method public removePrintServiceRecommendationsChangeListener(Landroid/printservice/recommendation/IRecommendationsChangeListener;)V
    .registers 8
    .param p1, "listener"    # Landroid/printservice/recommendation/IRecommendationsChangeListener;

    .line 679
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 680
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 681
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsChangeListenerRecords:Ljava/util/List;

    if-nez v1, :cond_c

    .line 682
    monitor-exit v0

    return-void

    .line 684
    :cond_c
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsChangeListenerRecords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 685
    .local v1, "recordCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_13
    if-ge v2, v1, :cond_3b

    .line 686
    iget-object v3, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsChangeListenerRecords:Ljava/util/List;

    .line 687
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/print/UserState$ListenerRecord;

    .line 688
    .local v3, "record":Lcom/android/server/print/UserState$ListenerRecord;, "Lcom/android/server/print/UserState$ListenerRecord<Landroid/printservice/recommendation/IRecommendationsChangeListener;>;"
    iget-object v4, v3, Lcom/android/server/print/UserState$ListenerRecord;->listener:Landroid/os/IInterface;

    check-cast v4, Landroid/printservice/recommendation/IRecommendationsChangeListener;

    invoke-interface {v4}, Landroid/printservice/recommendation/IRecommendationsChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {p1}, Landroid/printservice/recommendation/IRecommendationsChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 689
    invoke-virtual {v3}, Lcom/android/server/print/UserState$ListenerRecord;->destroy()V

    .line 690
    iget-object v4, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsChangeListenerRecords:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 691
    goto :goto_3b

    .line 685
    .end local v3    # "record":Lcom/android/server/print/UserState$ListenerRecord;, "Lcom/android/server/print/UserState$ListenerRecord<Landroid/printservice/recommendation/IRecommendationsChangeListener;>;"
    :cond_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 694
    .end local v2    # "i":I
    :cond_3b
    :goto_3b
    iget-object v2, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsChangeListenerRecords:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 695
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsChangeListenerRecords:Ljava/util/List;

    .line 697
    iput-object v2, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendations:Ljava/util/List;

    .line 699
    iget-object v3, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsService:Lcom/android/server/print/RemotePrintServiceRecommendationService;

    invoke-virtual {v3}, Lcom/android/server/print/RemotePrintServiceRecommendationService;->close()V

    .line 700
    iput-object v2, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsService:Lcom/android/server/print/RemotePrintServiceRecommendationService;

    .line 702
    .end local v1    # "recordCount":I
    :cond_4f
    monitor-exit v0

    .line 703
    return-void

    .line 702
    :catchall_51
    move-exception v1

    monitor-exit v0
    :try_end_53
    .catchall {:try_start_3 .. :try_end_53} :catchall_51

    throw v1
.end method

.method public removePrintServicesChangeListener(Landroid/print/IPrintServicesChangeListener;)V
    .registers 8
    .param p1, "listener"    # Landroid/print/IPrintServicesChangeListener;

    .line 631
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 632
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 633
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrintServicesChangeListenerRecords:Ljava/util/List;

    if-nez v1, :cond_c

    .line 634
    monitor-exit v0

    return-void

    .line 636
    :cond_c
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrintServicesChangeListenerRecords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 637
    .local v1, "recordCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_13
    if-ge v2, v1, :cond_3b

    .line 638
    iget-object v3, p0, Lcom/android/server/print/UserState;->mPrintServicesChangeListenerRecords:Ljava/util/List;

    .line 639
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/print/UserState$ListenerRecord;

    .line 640
    .local v3, "record":Lcom/android/server/print/UserState$ListenerRecord;, "Lcom/android/server/print/UserState$ListenerRecord<Landroid/print/IPrintServicesChangeListener;>;"
    iget-object v4, v3, Lcom/android/server/print/UserState$ListenerRecord;->listener:Landroid/os/IInterface;

    check-cast v4, Landroid/print/IPrintServicesChangeListener;

    invoke-interface {v4}, Landroid/print/IPrintServicesChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {p1}, Landroid/print/IPrintServicesChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 641
    invoke-virtual {v3}, Lcom/android/server/print/UserState$ListenerRecord;->destroy()V

    .line 642
    iget-object v4, p0, Lcom/android/server/print/UserState;->mPrintServicesChangeListenerRecords:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 643
    goto :goto_3b

    .line 637
    .end local v3    # "record":Lcom/android/server/print/UserState$ListenerRecord;, "Lcom/android/server/print/UserState$ListenerRecord<Landroid/print/IPrintServicesChangeListener;>;"
    :cond_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 646
    .end local v2    # "i":I
    :cond_3b
    :goto_3b
    iget-object v2, p0, Lcom/android/server/print/UserState;->mPrintServicesChangeListenerRecords:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 647
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/print/UserState;->mPrintServicesChangeListenerRecords:Ljava/util/List;

    .line 649
    .end local v1    # "recordCount":I
    :cond_46
    monitor-exit v0

    .line 650
    return-void

    .line 649
    :catchall_48
    move-exception v1

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_3 .. :try_end_4a} :catchall_48

    throw v1
.end method

.method public restartPrintJob(Landroid/print/PrintJobId;I)V
    .registers 7
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .param p2, "appId"    # I

    .line 378
    invoke-virtual {p0, p1, p2}, Lcom/android/server/print/UserState;->getPrintJobInfo(Landroid/print/PrintJobId;I)Landroid/print/PrintJobInfo;

    move-result-object v0

    .line 379
    .local v0, "printJobInfo":Landroid/print/PrintJobInfo;
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getState()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_e

    goto :goto_16

    .line 382
    :cond_e
    iget-object v1, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/server/print/RemotePrintSpooler;->setPrintJobState(Landroid/print/PrintJobId;ILjava/lang/String;)Z

    .line 383
    return-void

    .line 380
    :cond_16
    :goto_16
    return-void
.end method

.method public setBindInstantServiceAllowed(Z)V
    .registers 4
    .param p1, "allowed"    # Z

    .line 1212
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1213
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/print/UserState;->mIsInstantServiceAllowed:Z

    .line 1215
    invoke-virtual {p0}, Lcom/android/server/print/UserState;->updateIfNeededLocked()V

    .line 1216
    monitor-exit v0

    .line 1217
    return-void

    .line 1216
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public setPrintServiceEnabled(Landroid/content/ComponentName;Z)V
    .registers 9
    .param p1, "serviceName"    # Landroid/content/ComponentName;
    .param p2, "isEnabled"    # Z

    .line 419
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 420
    const/4 v1, 0x0

    .line 421
    .local v1, "isChanged":Z
    if-eqz p2, :cond_10

    .line 422
    :try_start_6
    iget-object v2, p0, Lcom/android/server/print/UserState;->mDisabledServices:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    move v1, v2

    goto :goto_35

    .line 445
    .end local v1    # "isChanged":Z
    :catchall_e
    move-exception v1

    goto :goto_4b

    .line 425
    .restart local v1    # "isChanged":Z
    :cond_10
    iget-object v2, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 426
    .local v2, "numServices":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_17
    if-ge v3, v2, :cond_35

    .line 427
    iget-object v4, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/printservice/PrintServiceInfo;

    .line 429
    .local v4, "service":Landroid/printservice/PrintServiceInfo;
    invoke-virtual {v4}, Landroid/printservice/PrintServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 430
    iget-object v5, p0, Lcom/android/server/print/UserState;->mDisabledServices:Ljava/util/Set;

    invoke-interface {v5, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 431
    const/4 v1, 0x1

    .line 432
    goto :goto_35

    .line 426
    .end local v4    # "service":Landroid/printservice/PrintServiceInfo;
    :cond_32
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 437
    .end local v2    # "numServices":I
    .end local v3    # "i":I
    :cond_35
    :goto_35
    if-eqz v1, :cond_49

    .line 438
    iget-object v2, p0, Lcom/android/server/print/UserState;->mDisabledServices:Ljava/util/Set;

    invoke-direct {p0, v2}, Lcom/android/server/print/UserState;->writeDisabledPrintServicesLocked(Ljava/util/Set;)V

    .line 440
    iget-object v2, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    const/16 v3, 0x1ff

    .line 441
    nop

    .line 440
    xor-int/lit8 v4, p2, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 443
    invoke-direct {p0}, Lcom/android/server/print/UserState;->onConfigurationChangedLocked()V

    .line 445
    .end local v1    # "isChanged":Z
    :cond_49
    monitor-exit v0

    .line 446
    return-void

    .line 445
    :goto_4b
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_6 .. :try_end_4c} :catchall_e

    throw v1
.end method

.method public startPrinterDiscovery(Landroid/print/IPrinterDiscoveryObserver;Ljava/util/List;)V
    .registers 5
    .param p1, "observer"    # Landroid/print/IPrinterDiscoveryObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/print/IPrinterDiscoveryObserver;",
            "Ljava/util/List<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation

    .line 491
    .local p2, "printerIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 492
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 495
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    if-nez v1, :cond_c

    .line 496
    monitor-exit v0

    return-void

    .line 499
    :cond_c
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->startPrinterDiscoveryLocked(Landroid/print/IPrinterDiscoveryObserver;Ljava/util/List;)V

    .line 501
    monitor-exit v0

    .line 502
    return-void

    .line 501
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public startPrinterStateTracking(Landroid/print/PrinterId;)V
    .registers 4
    .param p1, "printerId"    # Landroid/print/PrinterId;

    .line 534
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 535
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 537
    iget-object v1, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 538
    monitor-exit v0

    return-void

    .line 541
    :cond_10
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    if-nez v1, :cond_16

    .line 542
    monitor-exit v0

    return-void

    .line 545
    :cond_16
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-virtual {v1, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->startPrinterStateTrackingLocked(Landroid/print/PrinterId;)V

    .line 546
    monitor-exit v0

    .line 547
    return-void

    .line 546
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public stopPrinterDiscovery(Landroid/print/IPrinterDiscoveryObserver;)V
    .registers 4
    .param p1, "observer"    # Landroid/print/IPrinterDiscoveryObserver;

    .line 505
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 506
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 509
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    if-nez v1, :cond_c

    .line 510
    monitor-exit v0

    return-void

    .line 513
    :cond_c
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-virtual {v1, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->stopPrinterDiscoveryLocked(Landroid/print/IPrinterDiscoveryObserver;)V

    .line 514
    monitor-exit v0

    .line 515
    return-void

    .line 514
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public stopPrinterStateTracking(Landroid/print/PrinterId;)V
    .registers 4
    .param p1, "printerId"    # Landroid/print/PrinterId;

    .line 550
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 551
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 553
    iget-object v1, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 554
    monitor-exit v0

    return-void

    .line 557
    :cond_10
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    if-nez v1, :cond_16

    .line 558
    monitor-exit v0

    return-void

    .line 561
    :cond_16
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-virtual {v1, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->stopPrinterStateTrackingLocked(Landroid/print/PrinterId;)V

    .line 562
    monitor-exit v0

    .line 563
    return-void

    .line 562
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public updateIfNeededLocked()V
    .registers 1

    .line 801
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 802
    invoke-direct {p0}, Lcom/android/server/print/UserState;->readConfigurationLocked()V

    .line 803
    invoke-direct {p0}, Lcom/android/server/print/UserState;->onConfigurationChangedLocked()V

    .line 804
    return-void
.end method

.method public validatePrinters(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation

    .line 518
    .local p1, "printerIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 519
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 521
    iget-object v1, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 522
    monitor-exit v0

    return-void

    .line 525
    :cond_10
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    if-nez v1, :cond_16

    .line 526
    monitor-exit v0

    return-void

    .line 529
    :cond_16
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-virtual {v1, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->validatePrintersLocked(Ljava/util/List;)V

    .line 530
    monitor-exit v0

    .line 531
    return-void

    .line 530
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method
