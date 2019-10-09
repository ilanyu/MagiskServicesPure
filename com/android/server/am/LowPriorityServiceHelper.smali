.class Lcom/android/server/am/LowPriorityServiceHelper;
.super Ljava/lang/Object;
.source "ActiveServicesInjector.java"


# static fields
.field static final DEBUG_DELAYED_STARTS:Z = false

.field static final DEFAULT_NO_PROC_DELAY_TIME:J = 0x12cL

.field static final LOW_PRIORITY_DELAY:J = 0x96L

.field static final MAX_DELAY_TIME:J = 0x3e8L

.field static final MAX_TIME_OUT:J = 0x5dcL

.field static final MIN_DELAY_TIME:J = 0x0L

.field static final MSG_BG_RESTART_LOW_PRIORITY:I = 0x66

.field static final MSG_BG_START_LOW_PRIORITY:I = 0x65

.field private static final PACKAGE_NAME_ALL:Ljava/lang/String; = "*"

.field private static final SEPARATOR:Ljava/lang/String; = "/"

.field static final SHORT_DELAY:J = 0x5L

.field static final mInstance:Lcom/android/server/am/LowPriorityServiceHelper;


# instance fields
.field private final MAX_SIZE:I

.field private canOpen:Z

.field private closeCheck:Z

.field private fLowPriorityDelay:Ljava/lang/reflect/Field;

.field private fLowPriorityDelayRestart:Ljava/lang/reflect/Field;

.field private lastLowPriorityEnforcedTime:J

.field private final mBlacklist:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/MiuiServicePriority;",
            ">;"
        }
    .end annotation
.end field

.field private final mLowPriorityList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/LowPriorityServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mWhitelist:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/MiuiServicePriority;",
            ">;"
        }
    .end annotation
.end field

.field noProcDelayTime:J

.field private sendNoDelayEnforcedMsg:Z

.field private startEnforcedLowPriorityService:Z

.field private unCheckPackage:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 184
    new-instance v0, Lcom/android/server/am/LowPriorityServiceHelper;

    invoke-direct {v0}, Lcom/android/server/am/LowPriorityServiceHelper;-><init>()V

    sput-object v0, Lcom/android/server/am/LowPriorityServiceHelper;->mInstance:Lcom/android/server/am/LowPriorityServiceHelper;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    const/16 v0, 0x1e

    iput v0, p0, Lcom/android/server/am/LowPriorityServiceHelper;->MAX_SIZE:I

    .line 188
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/LowPriorityServiceHelper;->canOpen:Z

    .line 189
    iput-boolean v0, p0, Lcom/android/server/am/LowPriorityServiceHelper;->closeCheck:Z

    .line 190
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/android/server/am/LowPriorityServiceHelper;->noProcDelayTime:J

    .line 194
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/LowPriorityServiceHelper;->sendNoDelayEnforcedMsg:Z

    .line 195
    iput-boolean v0, p0, Lcom/android/server/am/LowPriorityServiceHelper;->startEnforcedLowPriorityService:Z

    .line 196
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mLowPriorityList:Ljava/util/ArrayList;

    .line 198
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mBlacklist:Ljava/util/HashMap;

    .line 201
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mWhitelist:Ljava/util/HashMap;

    .line 204
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/LowPriorityServiceHelper;->unCheckPackage:Ljava/util/HashSet;

    .line 211
    :try_start_31
    const-class v1, Lcom/android/server/am/ServiceRecord;

    const-string/jumbo v2, "lowPriorityDelay"

    invoke-static {v1, v2}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/LowPriorityServiceHelper;->fLowPriorityDelay:Ljava/lang/reflect/Field;

    .line 212
    const-class v1, Lcom/android/server/am/ServiceRecord;

    const-string/jumbo v2, "lowPriorityDelayRestart"

    invoke-static {v1, v2}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/LowPriorityServiceHelper;->fLowPriorityDelayRestart:Ljava/lang/reflect/Field;
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_47} :catch_48

    .line 215
    goto :goto_4c

    .line 213
    :catch_48
    move-exception v1

    .line 214
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 216
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_4c
    sget-boolean v1, Lmiui/os/Build;->IS_CTS_BUILD:Z

    if-nez v1, :cond_58

    iget-object v1, p0, Lcom/android/server/am/LowPriorityServiceHelper;->fLowPriorityDelay:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_58

    iget-object v1, p0, Lcom/android/server/am/LowPriorityServiceHelper;->fLowPriorityDelayRestart:Ljava/lang/reflect/Field;

    if-nez v1, :cond_5a

    .line 217
    :cond_58
    iput-boolean v0, p0, Lcom/android/server/am/LowPriorityServiceHelper;->canOpen:Z

    .line 219
    :cond_5a
    return-void
.end method

.method private countDelayTime(Lcom/android/server/am/ActiveServices$ServiceMap;Lcom/android/internal/app/MiuiServicePriority;Lcom/android/server/am/LowPriorityServiceInfo;)V
    .registers 8
    .param p1, "smap"    # Lcom/android/server/am/ActiveServices$ServiceMap;
    .param p2, "sp"    # Lcom/android/internal/app/MiuiServicePriority;
    .param p3, "info"    # Lcom/android/server/am/LowPriorityServiceInfo;

    .line 299
    if-nez p2, :cond_5

    .line 300
    const-wide/16 v0, 0x96

    .local v0, "delay":J
    goto :goto_12

    .line 302
    .end local v0    # "delay":J
    :cond_5
    iget-wide v0, p2, Lcom/android/internal/app/MiuiServicePriority;->delayTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_10

    const-wide/16 v0, 0x96

    goto :goto_12

    :cond_10
    iget-wide v0, p2, Lcom/android/internal/app/MiuiServicePriority;->delayTime:J

    .line 305
    .restart local v0    # "delay":J
    :goto_12
    iput-wide v0, p3, Lcom/android/server/am/LowPriorityServiceInfo;->delay:J

    .line 306
    return-void
.end method

.method private dumpMiuiServicePriority(Ljava/io/PrintWriter;Lcom/android/internal/app/MiuiServicePriority;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "sp"    # Lcom/android/internal/app/MiuiServicePriority;

    .line 597
    const-string v0, "#SP : "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 598
    const-string v0, " pkgName="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p2, Lcom/android/internal/app/MiuiServicePriority;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 599
    const-string v0, " sName="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p2, Lcom/android/internal/app/MiuiServicePriority;->serviceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 600
    const-string v0, " prio="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p2, Lcom/android/internal/app/MiuiServicePriority;->priority:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 601
    const-string v0, " cPrio="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p2, Lcom/android/internal/app/MiuiServicePriority;->checkPriority:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 602
    const-string v0, " inBlist="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p2, Lcom/android/internal/app/MiuiServicePriority;->inBlacklist:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 603
    const-string v0, " dTime="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p2, Lcom/android/internal/app/MiuiServicePriority;->delayTime:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 604
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 605
    return-void
.end method

.method private setLowPriorityDelay(Lcom/android/server/am/ServiceRecord;Z)V
    .registers 4
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "lowPriorityDelay"    # Z

    .line 476
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/LowPriorityServiceHelper;->fLowPriorityDelay:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 480
    goto :goto_d

    .line 477
    :catch_6
    move-exception v0

    .line 478
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 479
    invoke-virtual {p0}, Lcom/android/server/am/LowPriorityServiceHelper;->closeCheckPriority()V

    .line 481
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_d
    return-void
.end method

.method private setLowPriorityDelayRestart(Lcom/android/server/am/ServiceRecord;Z)V
    .registers 4
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "lowPriorityDelayRestart"    # Z

    .line 485
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/LowPriorityServiceHelper;->fLowPriorityDelayRestart:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 489
    goto :goto_d

    .line 486
    :catch_6
    move-exception v0

    .line 487
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 488
    invoke-virtual {p0}, Lcom/android/server/am/LowPriorityServiceHelper;->closeCheckPriority()V

    .line 490
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_d
    return-void
.end method


# virtual methods
.method public callerIsTopApp(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/ProcessRecord;)Z
    .registers 7
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "callerApp"    # Lcom/android/server/am/ProcessRecord;

    .line 309
    iget-boolean v0, p0, Lcom/android/server/am/LowPriorityServiceHelper;->canOpen:Z

    const/4 v1, 0x1

    if-nez v0, :cond_6

    .line 310
    return v1

    .line 313
    :cond_6
    if-eqz p2, :cond_32

    .line 314
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 315
    .local v0, "ar":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_31

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_31

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v2, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v3, p2, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v2, v3, :cond_31

    .line 316
    iget-object v2, p2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_31

    iget-object v2, p2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 319
    return v1

    .line 322
    .end local v0    # "ar":Lcom/android/server/am/ActivityRecord;
    :cond_31
    goto :goto_6a

    .line 323
    :cond_32
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    sget v2, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-ne v0, v2, :cond_3b

    .line 325
    return v1

    .line 326
    :cond_3b
    iget-object v0, p0, Lcom/android/server/am/LowPriorityServiceHelper;->unCheckPackage:Ljava/util/HashSet;

    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 327
    const-string v0, "ActiveServicesInjector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UnCheckPackage : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " service : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    return v1

    .line 331
    :cond_6a
    :goto_6a
    const/4 v0, 0x0

    return v0
.end method

.method public closeCheckPriority()V
    .registers 2

    .line 288
    iget-boolean v0, p0, Lcom/android/server/am/LowPriorityServiceHelper;->canOpen:Z

    if-nez v0, :cond_5

    .line 289
    return-void

    .line 291
    :cond_5
    iget-object v0, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mBlacklist:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 292
    iget-object v0, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mWhitelist:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 293
    iget-object v0, p0, Lcom/android/server/am/LowPriorityServiceHelper;->unCheckPackage:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 294
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/LowPriorityServiceHelper;->closeCheck:Z

    .line 295
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 570
    const-string v0, "  MIUI ADD :  LPSH dump start : "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 571
    const-string v0, "  LowPriorityList services : "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 572
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    iget-object v1, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mLowPriorityList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_5b

    .line 573
    iget-object v1, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mLowPriorityList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/LowPriorityServiceInfo;

    .line 574
    .local v1, "info":Lcom/android/server/am/LowPriorityServiceInfo;
    const-string v2, "#LPSInfo : "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v2, " isRestart : "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, v1, Lcom/android/server/am/LowPriorityServiceInfo;->isRestart:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 575
    const-string v2, " delay : "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, v1, Lcom/android/server/am/LowPriorityServiceInfo;->delay:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 576
    const-string v2, " pendingStarts.size : "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/server/am/LowPriorityServiceInfo;->mR:Lcom/android/server/am/ServiceRecord;

    iget-object v2, v2, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 577
    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/server/am/LowPriorityServiceInfo;->mR:Lcom/android/server/am/ServiceRecord;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/android/server/am/LowPriorityServiceInfo;->mR:Lcom/android/server/am/ServiceRecord;

    const-string v3, "    "

    invoke-virtual {v2, p1, v3}, Lcom/android/server/am/ServiceRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 572
    .end local v1    # "info":Lcom/android/server/am/LowPriorityServiceInfo;
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 580
    .end local v0    # "i":I
    :cond_5b
    const-string v0, "  Blacklist : "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 581
    iget-object v0, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mBlacklist:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 582
    .local v0, "bKeySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_82

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 583
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mBlacklist:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/MiuiServicePriority;

    .line 584
    .local v3, "sp":Lcom/android/internal/app/MiuiServicePriority;
    invoke-direct {p0, p1, v3}, Lcom/android/server/am/LowPriorityServiceHelper;->dumpMiuiServicePriority(Ljava/io/PrintWriter;Lcom/android/internal/app/MiuiServicePriority;)V

    .line 585
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "sp":Lcom/android/internal/app/MiuiServicePriority;
    goto :goto_6a

    .line 587
    :cond_82
    const-string v1, "  Whitelist : "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 588
    iget-object v1, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mWhitelist:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 589
    .local v1, "wKeySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_91
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 590
    .local v3, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mWhitelist:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/MiuiServicePriority;

    .line 591
    .local v4, "sp":Lcom/android/internal/app/MiuiServicePriority;
    invoke-direct {p0, p1, v4}, Lcom/android/server/am/LowPriorityServiceHelper;->dumpMiuiServicePriority(Ljava/io/PrintWriter;Lcom/android/internal/app/MiuiServicePriority;)V

    .line 592
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "sp":Lcom/android/internal/app/MiuiServicePriority;
    goto :goto_91

    .line 593
    :cond_a9
    const-string v2, "  LPSH dump END !!!"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 594
    return-void
.end method

.method public forceRemoveServiceLocked(Lcom/android/server/am/ServiceRecord;)Z
    .registers 5
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;

    .line 439
    const/4 v0, 0x0

    .line 440
    .local v0, "remove":Z
    iget-object v1, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mLowPriorityList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2c

    .line 441
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    iget-object v2, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mLowPriorityList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2c

    .line 442
    iget-object v2, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mLowPriorityList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/LowPriorityServiceInfo;

    iget-object v2, v2, Lcom/android/server/am/LowPriorityServiceInfo;->mR:Lcom/android/server/am/ServiceRecord;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 443
    iget-object v2, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mLowPriorityList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 444
    const/4 v0, 0x1

    goto :goto_a

    .line 446
    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 450
    .end local v1    # "i":I
    :cond_2c
    return v0
.end method

.method public isLowPriorityDelayStart(Lcom/android/server/am/ActiveServices$ServiceMap;Lcom/android/server/am/ServiceRecord;IZ)Z
    .registers 6
    .param p1, "smap"    # Lcom/android/server/am/ActiveServices$ServiceMap;
    .param p2, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p3, "callerUid"    # I
    .param p4, "callerFg"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 336
    const/4 v0, 0x0

    return v0
.end method

.method public isLowPriorityDelayStart(Lcom/android/server/am/ActiveServices$ServiceMap;Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/ProcessRecord;ZZ)Z
    .registers 22
    .param p1, "smap"    # Lcom/android/server/am/ActiveServices$ServiceMap;
    .param p2, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p3, "callerApp"    # Lcom/android/server/am/ProcessRecord;
    .param p4, "callerFg"    # Z
    .param p5, "restart"    # Z

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 341
    move/from16 v3, p5

    iget-boolean v4, v0, Lcom/android/server/am/LowPriorityServiceHelper;->closeCheck:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_e

    .line 342
    return v5

    .line 345
    :cond_e
    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    const/16 v6, 0x2710

    if-ge v4, v6, :cond_1b

    .line 346
    return v5

    .line 350
    :cond_1b
    const/4 v4, 0x0

    .line 351
    .local v4, "sp":Lcom/android/internal/app/MiuiServicePriority;
    const/4 v6, 0x0

    .line 352
    .local v6, "addToLowPriorityList":Z
    invoke-static {}, Lcom/android/server/am/MiuiSysUserServiceHelper;->isAllLimit()Z

    move-result v7

    if-eqz v7, :cond_26

    .line 353
    const/4 v6, 0x1

    goto/16 :goto_b3

    .line 355
    :cond_26
    if-eqz p4, :cond_6f

    .line 356
    iget-object v8, v0, Lcom/android/server/am/LowPriorityServiceHelper;->mBlacklist:Ljava/util/HashMap;

    .line 357
    .local v8, "uselist":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/internal/app/MiuiServicePriority;>;"
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "*/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v2, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v4, v9

    check-cast v4, Lcom/android/internal/app/MiuiServicePriority;

    .line 358
    if-eqz v4, :cond_4a

    .line 359
    const/4 v6, 0x1

    goto :goto_b3

    .line 361
    :cond_4a
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v2, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v4, v9

    check-cast v4, Lcom/android/internal/app/MiuiServicePriority;

    .line 362
    if-eqz v4, :cond_b3

    .line 363
    const/4 v6, 0x1

    goto :goto_b3

    .line 367
    .end local v8    # "uselist":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/internal/app/MiuiServicePriority;>;"
    :cond_6f
    iget-object v8, v0, Lcom/android/server/am/LowPriorityServiceHelper;->mWhitelist:Ljava/util/HashMap;

    .line 368
    .restart local v8    # "uselist":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/internal/app/MiuiServicePriority;>;"
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v2, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v4, v9

    check-cast v4, Lcom/android/internal/app/MiuiServicePriority;

    .line 369
    if-nez v4, :cond_b3

    .line 370
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "*/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v2, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v4, v9

    check-cast v4, Lcom/android/internal/app/MiuiServicePriority;

    .line 371
    if-nez v4, :cond_b3

    .line 372
    const/4 v6, 0x1

    .line 378
    .end local v8    # "uselist":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/internal/app/MiuiServicePriority;>;"
    :cond_b3
    :goto_b3
    if-eqz v6, :cond_137

    .line 380
    new-instance v8, Lcom/android/server/am/LowPriorityServiceInfo;

    invoke-direct {v8, v2, v3}, Lcom/android/server/am/LowPriorityServiceInfo;-><init>(Lcom/android/server/am/ServiceRecord;Z)V

    .line 381
    .local v8, "info":Lcom/android/server/am/LowPriorityServiceInfo;
    invoke-direct {v0, v1, v4, v8}, Lcom/android/server/am/LowPriorityServiceHelper;->countDelayTime(Lcom/android/server/am/ActiveServices$ServiceMap;Lcom/android/internal/app/MiuiServicePriority;Lcom/android/server/am/LowPriorityServiceInfo;)V

    .line 383
    if-eqz v3, :cond_c1

    .line 384
    iput-boolean v5, v8, Lcom/android/server/am/LowPriorityServiceInfo;->restartPerformed:Z

    .line 388
    :cond_c1
    iget-object v9, v0, Lcom/android/server/am/LowPriorityServiceHelper;->mLowPriorityList:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    iget-object v9, v0, Lcom/android/server/am/LowPriorityServiceHelper;->mLowPriorityList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/16 v10, 0x1e

    const/16 v11, 0x65

    const/16 v12, 0x66

    const/4 v13, 0x1

    if-lt v9, v10, :cond_f9

    .line 392
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    iput-wide v9, v0, Lcom/android/server/am/LowPriorityServiceHelper;->lastLowPriorityEnforcedTime:J

    .line 393
    iget-boolean v9, v0, Lcom/android/server/am/LowPriorityServiceHelper;->sendNoDelayEnforcedMsg:Z

    if-nez v9, :cond_f9

    .line 394
    iput-boolean v13, v0, Lcom/android/server/am/LowPriorityServiceHelper;->sendNoDelayEnforcedMsg:Z

    .line 395
    iget-object v9, v0, Lcom/android/server/am/LowPriorityServiceHelper;->mLowPriorityList:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/LowPriorityServiceInfo;

    .line 397
    .local v5, "firstService":Lcom/android/server/am/LowPriorityServiceInfo;
    iget-boolean v9, v5, Lcom/android/server/am/LowPriorityServiceInfo;->isRestart:Z

    if-eqz v9, :cond_f2

    .line 398
    invoke-virtual {v1, v12}, Lcom/android/server/am/ActiveServices$ServiceMap;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .local v9, "msg":Landroid/os/Message;
    goto :goto_f6

    .line 400
    .end local v9    # "msg":Landroid/os/Message;
    :cond_f2
    invoke-virtual {v1, v11}, Lcom/android/server/am/ActiveServices$ServiceMap;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 402
    .restart local v9    # "msg":Landroid/os/Message;
    :goto_f6
    invoke-virtual {v1, v9}, Lcom/android/server/am/ActiveServices$ServiceMap;->sendMessage(Landroid/os/Message;)Z

    .line 407
    .end local v5    # "firstService":Lcom/android/server/am/LowPriorityServiceInfo;
    .end local v9    # "msg":Landroid/os/Message;
    :cond_f9
    iget-object v5, v0, Lcom/android/server/am/LowPriorityServiceHelper;->mLowPriorityList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v13, :cond_136

    .line 408
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 410
    .local v9, "now":J
    iget-boolean v5, v8, Lcom/android/server/am/LowPriorityServiceInfo;->isRestart:Z

    if-eqz v5, :cond_10e

    .line 411
    invoke-virtual {v1, v12}, Lcom/android/server/am/ActiveServices$ServiceMap;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .local v5, "msg":Landroid/os/Message;
    goto :goto_112

    .line 413
    .end local v5    # "msg":Landroid/os/Message;
    :cond_10e
    invoke-virtual {v1, v11}, Lcom/android/server/am/ActiveServices$ServiceMap;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 416
    .restart local v5    # "msg":Landroid/os/Message;
    :goto_112
    iget-object v11, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v11, :cond_11c

    iget-object v11, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v11, v11, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v11, :cond_126

    .line 417
    :cond_11c
    iget-wide v11, v0, Lcom/android/server/am/LowPriorityServiceHelper;->lastLowPriorityEnforcedTime:J

    const-wide/16 v14, 0x96

    sub-long/2addr v11, v14

    const-wide/16 v14, 0x12c

    add-long/2addr v11, v14

    iput-wide v11, v0, Lcom/android/server/am/LowPriorityServiceHelper;->lastLowPriorityEnforcedTime:J

    .line 419
    :cond_126
    iget-wide v11, v0, Lcom/android/server/am/LowPriorityServiceHelper;->lastLowPriorityEnforcedTime:J

    cmp-long v11, v9, v11

    if-ltz v11, :cond_130

    .line 420
    invoke-virtual {v1, v5}, Lcom/android/server/am/ActiveServices$ServiceMap;->sendMessage(Landroid/os/Message;)Z

    goto :goto_136

    .line 422
    :cond_130
    iget-wide v11, v0, Lcom/android/server/am/LowPriorityServiceHelper;->lastLowPriorityEnforcedTime:J

    sub-long/2addr v11, v9

    invoke-virtual {v1, v5, v11, v12}, Lcom/android/server/am/ActiveServices$ServiceMap;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 433
    .end local v5    # "msg":Landroid/os/Message;
    .end local v9    # "now":J
    :cond_136
    :goto_136
    return v13

    .line 435
    .end local v8    # "info":Lcom/android/server/am/LowPriorityServiceInfo;
    :cond_137
    return v5
.end method

.method public removeService(Lcom/android/server/am/ServiceRecord;)Z
    .registers 6
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;

    .line 454
    iget-boolean v0, p0, Lcom/android/server/am/LowPriorityServiceHelper;->canOpen:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 455
    return v1

    .line 457
    :cond_6
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_f

    .line 458
    return v1

    .line 460
    :cond_f
    move v0, v1

    .local v0, "i":I
    :goto_10
    iget-object v2, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mLowPriorityList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3a

    .line 461
    iget-object v2, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mLowPriorityList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/LowPriorityServiceInfo;

    .line 462
    .local v2, "rInfo":Lcom/android/server/am/LowPriorityServiceInfo;
    iget-object v3, v2, Lcom/android/server/am/LowPriorityServiceInfo;->mR:Lcom/android/server/am/ServiceRecord;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 465
    iget-boolean v1, v2, Lcom/android/server/am/LowPriorityServiceInfo;->isRestart:Z

    if-eqz v1, :cond_30

    iget-boolean v1, v2, Lcom/android/server/am/LowPriorityServiceInfo;->restartPerformed:Z

    if-eqz v1, :cond_35

    .line 466
    :cond_30
    iget-object v1, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mLowPriorityList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 468
    :cond_35
    const/4 v1, 0x1

    return v1

    .line 460
    .end local v2    # "rInfo":Lcom/android/server/am/LowPriorityServiceInfo;
    :cond_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 471
    .end local v0    # "i":I
    :cond_3a
    return v1
.end method

.method public removeServicePriority(Lcom/android/internal/app/MiuiServicePriority;Z)V
    .registers 10
    .param p1, "servicePriority"    # Lcom/android/internal/app/MiuiServicePriority;
    .param p2, "inBlacklist"    # Z

    .line 264
    iget-boolean v0, p0, Lcom/android/server/am/LowPriorityServiceHelper;->closeCheck:Z

    if-eqz v0, :cond_5

    .line 265
    return-void

    .line 268
    :cond_5
    if-eqz p2, :cond_a

    .line 269
    iget-object v0, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mBlacklist:Ljava/util/HashMap;

    .local v0, "uselist":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/internal/app/MiuiServicePriority;>;"
    goto :goto_c

    .line 271
    .end local v0    # "uselist":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/internal/app/MiuiServicePriority;>;"
    :cond_a
    iget-object v0, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mWhitelist:Ljava/util/HashMap;

    .line 273
    .restart local v0    # "uselist":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/internal/app/MiuiServicePriority;>;"
    :goto_c
    iget-object v1, p1, Lcom/android/internal/app/MiuiServicePriority;->serviceName:Ljava/lang/String;

    if-nez v1, :cond_3e

    .line 274
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 275
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/app/MiuiServicePriority;>;>;"
    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 276
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 277
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/app/MiuiServicePriority;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 278
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/MiuiServicePriority;

    .line 279
    .local v4, "sp":Lcom/android/internal/app/MiuiServicePriority;
    iget-object v5, v4, Lcom/android/internal/app/MiuiServicePriority;->packageName:Ljava/lang/String;

    iget-object v6, p1, Lcom/android/internal/app/MiuiServicePriority;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 280
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 282
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/app/MiuiServicePriority;>;"
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "sp":Lcom/android/internal/app/MiuiServicePriority;
    :cond_3d
    goto :goto_18

    .line 284
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/app/MiuiServicePriority;>;>;"
    :cond_3e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/android/internal/app/MiuiServicePriority;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/internal/app/MiuiServicePriority;->serviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    return-void
.end method

.method public rescheduleDelayedList(JLcom/android/server/am/ActiveServices;Lcom/android/server/am/ActiveServices$ServiceMap;)V
    .registers 18
    .param p1, "now"    # J
    .param p3, "as"    # Lcom/android/server/am/ActiveServices;
    .param p4, "smap"    # Lcom/android/server/am/ActiveServices$ServiceMap;

    move-object v1, p0

    .line 493
    move-object/from16 v8, p4

    iget-boolean v0, v1, Lcom/android/server/am/LowPriorityServiceHelper;->canOpen:Z

    if-nez v0, :cond_8

    .line 494
    return-void

    .line 496
    :cond_8
    iget-boolean v0, v1, Lcom/android/server/am/LowPriorityServiceHelper;->startEnforcedLowPriorityService:Z

    const/16 v9, 0x66

    if-nez v0, :cond_120

    .line 497
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/am/LowPriorityServiceHelper;->startEnforcedLowPriorityService:Z

    .line 498
    :goto_11
    iget-wide v2, v1, Lcom/android/server/am/LowPriorityServiceHelper;->lastLowPriorityEnforcedTime:J

    cmp-long v2, p1, v2

    const/4 v10, 0x0

    if-ltz v2, :cond_11e

    iget-object v2, v1, Lcom/android/server/am/LowPriorityServiceHelper;->mLowPriorityList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_11e

    .line 499
    iget-object v2, v1, Lcom/android/server/am/LowPriorityServiceHelper;->mLowPriorityList:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/android/server/am/LowPriorityServiceInfo;

    .line 500
    .local v11, "rInfo":Lcom/android/server/am/LowPriorityServiceInfo;
    const/4 v2, 0x0

    .line 501
    .local v2, "next":Lcom/android/server/am/LowPriorityServiceInfo;
    iget-boolean v3, v11, Lcom/android/server/am/LowPriorityServiceInfo;->isRestart:Z

    if-nez v3, :cond_3e

    iget-object v3, v11, Lcom/android/server/am/LowPriorityServiceInfo;->mR:Lcom/android/server/am/ServiceRecord;

    iget-object v3, v3, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_3e

    .line 502
    iget-object v3, v11, Lcom/android/server/am/LowPriorityServiceInfo;->mR:Lcom/android/server/am/ServiceRecord;

    invoke-direct {v1, v3, v10}, Lcom/android/server/am/LowPriorityServiceHelper;->setLowPriorityDelay(Lcom/android/server/am/ServiceRecord;Z)V

    .line 503
    goto :goto_11

    .line 506
    :cond_3e
    iget-object v3, v1, Lcom/android/server/am/LowPriorityServiceHelper;->mLowPriorityList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_4f

    .line 507
    iget-object v3, v1, Lcom/android/server/am/LowPriorityServiceHelper;->mLowPriorityList:Ljava/util/ArrayList;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Lcom/android/server/am/LowPriorityServiceInfo;

    .line 510
    .end local v2    # "next":Lcom/android/server/am/LowPriorityServiceInfo;
    .local v12, "next":Lcom/android/server/am/LowPriorityServiceInfo;
    :cond_4f
    move-object v12, v2

    if-eqz v12, :cond_7f

    .line 511
    iget-object v2, v1, Lcom/android/server/am/LowPriorityServiceHelper;->mLowPriorityList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x1e

    if-gt v2, v3, :cond_79

    .line 512
    iput-boolean v10, v1, Lcom/android/server/am/LowPriorityServiceHelper;->sendNoDelayEnforcedMsg:Z

    .line 513
    iget-object v2, v12, Lcom/android/server/am/LowPriorityServiceInfo;->mR:Lcom/android/server/am/ServiceRecord;

    iget-object v2, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_73

    iget-object v2, v12, Lcom/android/server/am/LowPriorityServiceInfo;->mR:Lcom/android/server/am/ServiceRecord;

    iget-object v2, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v2, :cond_6d

    goto :goto_73

    .line 516
    :cond_6d
    iget-wide v2, v12, Lcom/android/server/am/LowPriorityServiceInfo;->delay:J

    add-long/2addr v2, p1

    iput-wide v2, v1, Lcom/android/server/am/LowPriorityServiceHelper;->lastLowPriorityEnforcedTime:J

    goto :goto_84

    .line 514
    :cond_73
    :goto_73
    iget-wide v2, v1, Lcom/android/server/am/LowPriorityServiceHelper;->noProcDelayTime:J

    add-long/2addr v2, p1

    iput-wide v2, v1, Lcom/android/server/am/LowPriorityServiceHelper;->lastLowPriorityEnforcedTime:J

    goto :goto_84

    .line 519
    :cond_79
    const-wide/16 v2, 0x5

    add-long/2addr v2, p1

    iput-wide v2, v1, Lcom/android/server/am/LowPriorityServiceHelper;->lastLowPriorityEnforcedTime:J

    goto :goto_84

    .line 522
    :cond_7f
    const-wide/16 v2, 0x96

    add-long/2addr v2, p1

    iput-wide v2, v1, Lcom/android/server/am/LowPriorityServiceHelper;->lastLowPriorityEnforcedTime:J

    .line 525
    :goto_84
    iget-boolean v2, v11, Lcom/android/server/am/LowPriorityServiceInfo;->isRestart:Z

    if-eqz v2, :cond_ba

    .line 526
    iput-boolean v0, v11, Lcom/android/server/am/LowPriorityServiceInfo;->restartPerformed:Z

    .line 528
    :try_start_8a
    const-string v0, "ActiveServicesInjector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RESTART Low priority start of: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v11, Lcom/android/server/am/LowPriorityServiceInfo;->mR:Lcom/android/server/am/ServiceRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    iget-object v0, v11, Lcom/android/server/am/LowPriorityServiceInfo;->mR:Lcom/android/server/am/ServiceRecord;

    invoke-direct {v1, v0, v10}, Lcom/android/server/am/LowPriorityServiceHelper;->setLowPriorityDelayRestart(Lcom/android/server/am/ServiceRecord;Z)V

    .line 530
    iget-object v0, v11, Lcom/android/server/am/LowPriorityServiceInfo;->mR:Lcom/android/server/am/ServiceRecord;

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v2, v11, Lcom/android/server/am/LowPriorityServiceInfo;->mR:Lcom/android/server/am/ServiceRecord;

    iget-object v2, v2, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_b4} :catch_b5

    goto :goto_b9

    .line 531
    :catch_b5
    move-exception v0

    .line 532
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 533
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_b9
    goto :goto_103

    .line 536
    :cond_ba
    :try_start_ba
    const-string v2, "ActiveServicesInjector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Low priority start of: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v11, Lcom/android/server/am/LowPriorityServiceInfo;->mR:Lcom/android/server/am/ServiceRecord;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    iget-object v2, v11, Lcom/android/server/am/LowPriorityServiceInfo;->mR:Lcom/android/server/am/ServiceRecord;

    invoke-direct {v1, v2, v10}, Lcom/android/server/am/LowPriorityServiceHelper;->setLowPriorityDelay(Lcom/android/server/am/ServiceRecord;Z)V

    .line 538
    iget-object v2, v11, Lcom/android/server/am/LowPriorityServiceInfo;->mR:Lcom/android/server/am/ServiceRecord;

    iget-object v2, v2, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ServiceRecord$StartItem;

    iget-object v4, v2, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    iget-object v5, v11, Lcom/android/server/am/LowPriorityServiceInfo;->mR:Lcom/android/server/am/ServiceRecord;

    const/4 v6, 0x0

    iget-object v2, v11, Lcom/android/server/am/LowPriorityServiceInfo;->mR:Lcom/android/server/am/ServiceRecord;

    iget-object v2, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_f7

    iget-object v2, v11, Lcom/android/server/am/LowPriorityServiceInfo;->mR:Lcom/android/server/am/ServiceRecord;

    iget-object v2, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v2, :cond_f5

    goto :goto_f7

    :cond_f5
    move v7, v10

    goto :goto_f8

    :cond_f7
    :goto_f7
    move v7, v0

    :goto_f8
    move-object/from16 v2, p3

    move-object v3, v8

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActiveServices;->startServiceInnerLocked(Lcom/android/server/am/ActiveServices$ServiceMap;Landroid/content/Intent;Lcom/android/server/am/ServiceRecord;ZZ)Landroid/content/ComponentName;
    :try_end_fe
    .catch Ljava/lang/Exception; {:try_start_ba .. :try_end_fe} :catch_ff

    .line 542
    goto :goto_103

    .line 540
    :catch_ff
    move-exception v0

    .line 541
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 545
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_103
    invoke-virtual {v8, v9}, Lcom/android/server/am/ActiveServices$ServiceMap;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 546
    .local v0, "msg":Landroid/os/Message;
    if-eqz v12, :cond_118

    .line 547
    iget-boolean v2, v12, Lcom/android/server/am/LowPriorityServiceInfo;->isRestart:Z

    if-eqz v2, :cond_112

    .line 548
    invoke-virtual {v8, v9}, Lcom/android/server/am/ActiveServices$ServiceMap;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    goto :goto_118

    .line 550
    :cond_112
    const/16 v2, 0x65

    invoke-virtual {v8, v2}, Lcom/android/server/am/ActiveServices$ServiceMap;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 558
    :cond_118
    :goto_118
    iget-wide v2, v1, Lcom/android/server/am/LowPriorityServiceHelper;->lastLowPriorityEnforcedTime:J

    invoke-virtual {v8, v0, v2, v3}, Lcom/android/server/am/ActiveServices$ServiceMap;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 559
    nop

    .line 561
    .end local v0    # "msg":Landroid/os/Message;
    .end local v11    # "rInfo":Lcom/android/server/am/LowPriorityServiceInfo;
    .end local v12    # "next":Lcom/android/server/am/LowPriorityServiceInfo;
    :cond_11e
    iput-boolean v10, v1, Lcom/android/server/am/LowPriorityServiceHelper;->startEnforcedLowPriorityService:Z

    .line 564
    :cond_120
    iget-wide v2, v1, Lcom/android/server/am/LowPriorityServiceHelper;->lastLowPriorityEnforcedTime:J

    sub-long v2, p1, v2

    const-wide/16 v4, 0x5dc

    cmp-long v0, v2, v4

    if-lez v0, :cond_139

    iget-object v0, v1, Lcom/android/server/am/LowPriorityServiceHelper;->mLowPriorityList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_139

    .line 565
    invoke-virtual {v8, v9}, Lcom/android/server/am/ActiveServices$ServiceMap;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/android/server/am/ActiveServices$ServiceMap;->sendMessage(Landroid/os/Message;)Z

    .line 567
    :cond_139
    return-void
.end method

.method public setNoProcDelayTime(J)V
    .registers 5
    .param p1, "noProcDelayTime"    # J

    .line 253
    iget-boolean v0, p0, Lcom/android/server/am/LowPriorityServiceHelper;->canOpen:Z

    if-nez v0, :cond_5

    .line 254
    return-void

    .line 256
    :cond_5
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_14

    const-wide/16 v0, 0x3e8

    cmp-long v0, p1, v0

    if-gtz v0, :cond_14

    .line 257
    iput-wide p1, p0, Lcom/android/server/am/LowPriorityServiceHelper;->noProcDelayTime:J

    goto :goto_18

    .line 259
    :cond_14
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/android/server/am/LowPriorityServiceHelper;->noProcDelayTime:J

    .line 261
    :goto_18
    return-void
.end method

.method public setServicePriority(Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/app/MiuiServicePriority;",
            ">;)V"
        }
    .end annotation

    .line 222
    .local p1, "servicePrioritys":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/MiuiServicePriority;>;"
    iget-boolean v0, p0, Lcom/android/server/am/LowPriorityServiceHelper;->canOpen:Z

    if-nez v0, :cond_5

    .line 223
    return-void

    .line 225
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/MiuiServicePriority;

    .line 227
    .local v1, "servicePriority":Lcom/android/internal/app/MiuiServicePriority;
    iget-boolean v2, v1, Lcom/android/internal/app/MiuiServicePriority;->inBlacklist:Z

    if-eqz v2, :cond_1c

    .line 228
    iget-object v2, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mBlacklist:Ljava/util/HashMap;

    .local v2, "uselist":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/internal/app/MiuiServicePriority;>;"
    goto :goto_1e

    .line 230
    .end local v2    # "uselist":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/internal/app/MiuiServicePriority;>;"
    :cond_1c
    iget-object v2, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mWhitelist:Ljava/util/HashMap;

    .line 232
    .restart local v2    # "uselist":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/internal/app/MiuiServicePriority;>;"
    :goto_1e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/android/internal/app/MiuiServicePriority;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/internal/app/MiuiServicePriority;->serviceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 233
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/MiuiServicePriority;

    .line 234
    .local v4, "sp":Lcom/android/internal/app/MiuiServicePriority;
    if-eqz v4, :cond_68

    .line 235
    iget-object v5, v1, Lcom/android/internal/app/MiuiServicePriority;->packageName:Ljava/lang/String;

    iput-object v5, v4, Lcom/android/internal/app/MiuiServicePriority;->packageName:Ljava/lang/String;

    .line 236
    iget-object v5, v1, Lcom/android/internal/app/MiuiServicePriority;->serviceName:Ljava/lang/String;

    iput-object v5, v4, Lcom/android/internal/app/MiuiServicePriority;->serviceName:Ljava/lang/String;

    .line 237
    iget v5, v1, Lcom/android/internal/app/MiuiServicePriority;->priority:I

    iput v5, v4, Lcom/android/internal/app/MiuiServicePriority;->priority:I

    .line 238
    iget-boolean v5, v1, Lcom/android/internal/app/MiuiServicePriority;->checkPriority:Z

    iput-boolean v5, v4, Lcom/android/internal/app/MiuiServicePriority;->checkPriority:Z

    .line 239
    iget-wide v5, v1, Lcom/android/internal/app/MiuiServicePriority;->delayTime:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-ltz v5, :cond_63

    iget-wide v5, v1, Lcom/android/internal/app/MiuiServicePriority;->delayTime:J

    const-wide/16 v7, 0x3e8

    cmp-long v5, v5, v7

    if-gtz v5, :cond_63

    .line 240
    iget-wide v5, v1, Lcom/android/internal/app/MiuiServicePriority;->delayTime:J

    iput-wide v5, v4, Lcom/android/internal/app/MiuiServicePriority;->delayTime:J

    goto :goto_6b

    .line 242
    :cond_63
    const-wide/16 v5, 0x96

    iput-wide v5, v4, Lcom/android/internal/app/MiuiServicePriority;->delayTime:J

    goto :goto_6b

    .line 245
    :cond_68
    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    .end local v1    # "servicePriority":Lcom/android/internal/app/MiuiServicePriority;
    .end local v2    # "uselist":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/internal/app/MiuiServicePriority;>;"
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "sp":Lcom/android/internal/app/MiuiServicePriority;
    :goto_6b
    goto :goto_9

    .line 248
    :cond_6c
    iget-object v0, p0, Lcom/android/server/am/LowPriorityServiceHelper;->unCheckPackage:Ljava/util/HashSet;

    const-string v1, "com.cttl.testService"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 249
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/LowPriorityServiceHelper;->closeCheck:Z

    .line 250
    return-void
.end method
