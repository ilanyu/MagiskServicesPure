.class Lcom/android/server/print/PrintManagerService$PrintManagerImpl;
.super Landroid/print/IPrintManager$Stub;
.source "PrintManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/print/PrintManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PrintManagerImpl"
.end annotation


# static fields
.field private static final BACKGROUND_USER_ID:I = -0xa


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private final mUserManager:Landroid/os/UserManager;

.field private final mUserStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/print/UserState;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/print/PrintManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/print/PrintManagerService;Landroid/content/Context;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/print/PrintManagerService;
    .param p2, "context"    # Landroid/content/Context;

    .line 123
    iput-object p1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->this$0:Lcom/android/server/print/PrintManagerService;

    invoke-direct {p0}, Landroid/print/IPrintManager$Stub;-><init>()V

    .line 115
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    .line 121
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mUserStates:Landroid/util/SparseArray;

    .line 124
    iput-object p2, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    .line 125
    const-string/jumbo v0, "user"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mUserManager:Landroid/os/UserManager;

    .line 126
    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->registerContentObservers()V

    .line 127
    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->registerBroadcastReceivers()V

    .line 128
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/print/PrintManagerService$PrintManagerImpl;
    .param p1, "x1"    # I

    .line 112
    invoke-direct {p0, p1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->handleUserUnlocked(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/print/PrintManagerService$PrintManagerImpl;
    .param p1, "x1"    # I

    .line 112
    invoke-direct {p0, p1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->handleUserStopped(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    .line 112
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Landroid/util/SparseArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    .line 112
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mUserStates:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    .line 112
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Landroid/os/UserManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    .line 112
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;IZZ)Lcom/android/server/print/UserState;
    .registers 5
    .param p0, "x0"    # Lcom/android/server/print/PrintManagerService$PrintManagerImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .line 112
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZZ)Lcom/android/server/print/UserState;

    move-result-object v0

    return-object v0
.end method

.method private dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/util/ArrayList;)V
    .registers 8
    .param p1, "dumpStream"    # Lcom/android/internal/util/dump/DualDumpOutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/dump/DualDumpOutputStream;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/print/UserState;",
            ">;)V"
        }
    .end annotation

    .line 780
    .local p2, "userStatesToDump":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/print/UserState;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 781
    .local v0, "userStateCount":I
    const/4 v1, 0x0

    .line 781
    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_22

    .line 782
    const-string/jumbo v2, "user_states"

    const-wide v3, 0x20b00000001L

    invoke-virtual {p1, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v2

    .line 783
    .local v2, "token":J
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/print/UserState;

    invoke-virtual {v4, p1}, Lcom/android/server/print/UserState;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;)V

    .line 784
    invoke-virtual {p1, v2, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 781
    .end local v2    # "token":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 787
    .end local v1    # "i":I
    :cond_22
    invoke-virtual {p1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->flush()V

    .line 788
    return-void
.end method

.method private getCurrentUserId()I
    .registers 4

    .line 1082
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1084
    .local v0, "identity":J
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_c

    .line 1086
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1084
    return v2

    .line 1086
    :catchall_c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;
    .registers 4
    .param p1, "userId"    # I
    .param p2, "lowPriority"    # Z

    .line 958
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZZ)Lcom/android/server/print/UserState;

    move-result-object v0

    return-object v0
.end method

.method private getOrCreateUserStateLocked(IZZ)Lcom/android/server/print/UserState;
    .registers 8
    .param p1, "userId"    # I
    .param p2, "lowPriority"    # Z
    .param p3, "enforceUserUnlockingOrUnlocked"    # Z

    .line 964
    if-eqz p3, :cond_27

    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_27

    .line 965
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " must be unlocked for printing to be available"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 969
    :cond_27
    :goto_27
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/print/UserState;

    .line 970
    .local v0, "userState":Lcom/android/server/print/UserState;
    if-nez v0, :cond_40

    .line 971
    new-instance v1, Lcom/android/server/print/UserState;

    iget-object v2, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    invoke-direct {v1, v2, p1, v3, p2}, Lcom/android/server/print/UserState;-><init>(Landroid/content/Context;ILjava/lang/Object;Z)V

    move-object v0, v1

    .line 972
    iget-object v1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 975
    :cond_40
    if-nez p2, :cond_45

    .line 976
    invoke-virtual {v0}, Lcom/android/server/print/UserState;->increasePriority()V

    .line 979
    :cond_45
    return-object v0
.end method

.method private handleUserStopped(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 1007
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$4;

    invoke-direct {v1, p0, p1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$4;-><init>(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1019
    return-void
.end method

.method private handleUserUnlocked(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 985
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$3;-><init>(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1002
    return-void
.end method

.method private isPrintingEnabled()Z
    .registers 4

    .line 774
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v1, "no_printing"

    .line 775
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    .line 774
    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private registerBroadcastReceivers()V
    .registers 6

    .line 815
    new-instance v0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;

    invoke-direct {v0, p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;-><init>(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)V

    .line 954
    .local v0, "monitor":Lcom/android/internal/content/PackageMonitor;
    iget-object v1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 956
    return-void
.end method

.method private registerContentObservers()V
    .registers 6

    .line 791
    const-string v0, "disabled_print_services"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 793
    .local v0, "enabledPrintServicesUri":Landroid/net/Uri;
    new-instance v1, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$1;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$1;-><init>(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;Landroid/os/Handler;Landroid/net/Uri;)V

    .line 810
    .local v1, "observer":Landroid/database/ContentObserver;
    iget-object v2, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v2, v0, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 812
    return-void
.end method

.method private resolveCallingAppEnforcingPermissions(I)I
    .registers 7
    .param p1, "appId"    # I

    .line 1039
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1040
    .local v0, "callingUid":I
    if-nez v0, :cond_7

    .line 1041
    return p1

    .line 1043
    :cond_7
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 1044
    .local v1, "callingAppId":I
    if-eq p1, v1, :cond_45

    const/16 v2, 0x7d0

    if-eq v1, v2, :cond_45

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_16

    goto :goto_45

    .line 1048
    :cond_16
    iget-object v2, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    const-string v3, "com.android.printspooler.permission.ACCESS_ALL_PRINT_JOBS"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_21

    .line 1055
    return p1

    .line 1051
    :cond_21
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Call from app "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " as app "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " without com.android.printspooler.permission.ACCESS_ALL_PRINT_JOBS"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1046
    :cond_45
    :goto_45
    return p1
.end method

.method private resolveCallingPackageNameEnforcingSecurity(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1070
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1071
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1070
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 1072
    .local v0, "packages":[Ljava/lang/String;
    array-length v1, v0

    .line 1073
    .local v1, "packageCount":I
    const/4 v2, 0x0

    .line 1073
    .local v2, "i":I
    :goto_10
    if-ge v2, v1, :cond_1e

    .line 1074
    aget-object v3, v0, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 1075
    return-object p1

    .line 1073
    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 1078
    .end local v2    # "i":I
    :cond_1e
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "packageName has to belong to the caller"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private resolveCallingProfileParentLocked(I)I
    .registers 6
    .param p1, "userId"    # I

    .line 1022
    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I

    move-result v0

    if-eq p1, v0, :cond_29

    .line 1023
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1025
    .local v0, "identity":J
    :try_start_a
    iget-object v2, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 1026
    .local v2, "parent":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_1e

    .line 1027
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3
    :try_end_1a
    .catchall {:try_start_a .. :try_end_1a} :catchall_24

    .line 1032
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1027
    return v3

    .line 1029
    :cond_1e
    const/16 v3, -0xa

    .line 1032
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1029
    return v3

    .line 1032
    .end local v2    # "parent":Landroid/content/pm/UserInfo;
    :catchall_24
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 1035
    .end local v0    # "identity":J
    :cond_29
    return p1
.end method

.method private resolveCallingUserEnforcingPermissions(I)I
    .registers 10
    .param p1, "userId"    # I

    .line 1060
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1061
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v4, 0x1

    const/4 v5, 0x1

    const-string v6, ""

    const/4 v7, 0x0

    .line 1060
    move v3, p1

    invoke-interface/range {v0 .. v7}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_16} :catch_17

    return v0

    .line 1062
    :catch_17
    move-exception v0

    .line 1065
    return p1
.end method


# virtual methods
.method public addPrintJobStateChangeListener(Landroid/print/IPrintJobStateChangeListener;II)V
    .registers 10
    .param p1, "listener"    # Landroid/print/IPrintJobStateChangeListener;
    .param p2, "appId"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 547
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object p1, v0

    check-cast p1, Landroid/print/IPrintJobStateChangeListener;

    .line 549
    invoke-direct {p0, p3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result v0

    .line 552
    .local v0, "resolvedUserId":I
    iget-object v1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 554
    :try_start_e
    invoke-direct {p0, v0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v2

    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I

    move-result v3

    if-eq v2, v3, :cond_1a

    .line 555
    monitor-exit v1

    return-void

    .line 557
    :cond_1a
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingAppEnforcingPermissions(I)I

    move-result v2

    .line 558
    .local v2, "resolvedAppId":I
    const/4 v3, 0x0

    invoke-direct {p0, v0, v3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;

    move-result-object v3

    .line 559
    .local v3, "userState":Lcom/android/server/print/UserState;
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_e .. :try_end_24} :catchall_35

    .line 560
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 562
    .local v4, "identity":J
    :try_start_28
    invoke-virtual {v3, p1, v2}, Lcom/android/server/print/UserState;->addPrintJobStateChangeListener(Landroid/print/IPrintJobStateChangeListener;I)V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_30

    .line 564
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 565
    nop

    .line 566
    return-void

    .line 564
    :catchall_30
    move-exception v1

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 559
    .end local v2    # "resolvedAppId":I
    .end local v3    # "userState":Lcom/android/server/print/UserState;
    .end local v4    # "identity":J
    :catchall_35
    move-exception v2

    :try_start_36
    monitor-exit v1
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw v2
.end method

.method public addPrintServiceRecommendationsChangeListener(Landroid/printservice/recommendation/IRecommendationsChangeListener;I)V
    .registers 8
    .param p1, "listener"    # Landroid/printservice/recommendation/IRecommendationsChangeListener;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 642
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object p1, v0

    check-cast p1, Landroid/printservice/recommendation/IRecommendationsChangeListener;

    .line 644
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PRINT_SERVICE_RECOMMENDATIONS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result v0

    .line 648
    .local v0, "resolvedUserId":I
    iget-object v1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 650
    :try_start_16
    invoke-direct {p0, v0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v2

    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I

    move-result v3

    if-eq v2, v3, :cond_22

    .line 651
    monitor-exit v1

    return-void

    .line 653
    :cond_22
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;

    move-result-object v2

    .line 654
    .local v2, "userState":Lcom/android/server/print/UserState;
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_16 .. :try_end_28} :catchall_39

    .line 655
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 657
    .local v3, "identity":J
    :try_start_2c
    invoke-virtual {v2, p1}, Lcom/android/server/print/UserState;->addPrintServiceRecommendationsChangeListener(Landroid/printservice/recommendation/IRecommendationsChangeListener;)V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_34

    .line 659
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 660
    nop

    .line 661
    return-void

    .line 659
    :catchall_34
    move-exception v1

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 654
    .end local v2    # "userState":Lcom/android/server/print/UserState;
    .end local v3    # "identity":J
    :catchall_39
    move-exception v2

    :try_start_3a
    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw v2
.end method

.method public addPrintServicesChangeListener(Landroid/print/IPrintServicesChangeListener;I)V
    .registers 8
    .param p1, "listener"    # Landroid/print/IPrintServicesChangeListener;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 593
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object p1, v0

    check-cast p1, Landroid/print/IPrintServicesChangeListener;

    .line 595
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PRINT_SERVICES"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result v0

    .line 599
    .local v0, "resolvedUserId":I
    iget-object v1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 601
    :try_start_16
    invoke-direct {p0, v0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v2

    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I

    move-result v3

    if-eq v2, v3, :cond_22

    .line 602
    monitor-exit v1

    return-void

    .line 604
    :cond_22
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;

    move-result-object v2

    .line 605
    .local v2, "userState":Lcom/android/server/print/UserState;
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_16 .. :try_end_28} :catchall_39

    .line 606
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 608
    .local v3, "identity":J
    :try_start_2c
    invoke-virtual {v2, p1}, Lcom/android/server/print/UserState;->addPrintServicesChangeListener(Landroid/print/IPrintServicesChangeListener;)V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_34

    .line 610
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 611
    nop

    .line 612
    return-void

    .line 610
    :catchall_34
    move-exception v1

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 605
    .end local v2    # "userState":Lcom/android/server/print/UserState;
    .end local v3    # "identity":J
    :catchall_39
    move-exception v2

    :try_start_3a
    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw v2
.end method

.method public cancelPrintJob(Landroid/print/PrintJobId;II)V
    .registers 10
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .param p2, "appId"    # I
    .param p3, "userId"    # I

    .line 262
    if-nez p1, :cond_3

    .line 263
    return-void

    .line 266
    :cond_3
    invoke-direct {p0, p3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result v0

    .line 269
    .local v0, "resolvedUserId":I
    iget-object v1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 271
    :try_start_a
    invoke-direct {p0, v0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v2

    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I

    move-result v3

    if-eq v2, v3, :cond_16

    .line 272
    monitor-exit v1

    return-void

    .line 274
    :cond_16
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingAppEnforcingPermissions(I)I

    move-result v2

    .line 275
    .local v2, "resolvedAppId":I
    const/4 v3, 0x0

    invoke-direct {p0, v0, v3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;

    move-result-object v3

    .line 276
    .local v3, "userState":Lcom/android/server/print/UserState;
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_a .. :try_end_20} :catchall_31

    .line 277
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 279
    .local v4, "identity":J
    :try_start_24
    invoke-virtual {v3, p1, v2}, Lcom/android/server/print/UserState;->cancelPrintJob(Landroid/print/PrintJobId;I)V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_2c

    .line 281
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 282
    nop

    .line 283
    return-void

    .line 281
    :catchall_2c
    move-exception v1

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 276
    .end local v2    # "resolvedAppId":I
    .end local v3    # "userState":Lcom/android/server/print/UserState;
    .end local v4    # "identity":J
    :catchall_31
    move-exception v2

    :try_start_32
    monitor-exit v1
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v2
.end method

.method public createPrinterDiscoverySession(Landroid/print/IPrinterDiscoveryObserver;I)V
    .registers 8
    .param p1, "observer"    # Landroid/print/IPrinterDiscoveryObserver;
    .param p2, "userId"    # I

    .line 393
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object p1, v0

    check-cast p1, Landroid/print/IPrinterDiscoveryObserver;

    .line 395
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result v0

    .line 397
    .local v0, "resolvedUserId":I
    iget-object v1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 399
    :try_start_e
    invoke-direct {p0, v0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v2

    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I

    move-result v3

    if-eq v2, v3, :cond_1a

    .line 400
    monitor-exit v1

    return-void

    .line 402
    :cond_1a
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;

    move-result-object v2

    .line 403
    .local v2, "userState":Lcom/android/server/print/UserState;
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_e .. :try_end_20} :catchall_31

    .line 404
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 406
    .local v3, "identity":J
    :try_start_24
    invoke-virtual {v2, p1}, Lcom/android/server/print/UserState;->createPrinterDiscoverySession(Landroid/print/IPrinterDiscoveryObserver;)V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_2c

    .line 408
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 409
    nop

    .line 410
    return-void

    .line 408
    :catchall_2c
    move-exception v1

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 403
    .end local v2    # "userState":Lcom/android/server/print/UserState;
    .end local v3    # "identity":J
    :catchall_31
    move-exception v2

    :try_start_32
    monitor-exit v1
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v2
.end method

.method public destroyPrinterDiscoverySession(Landroid/print/IPrinterDiscoveryObserver;I)V
    .registers 8
    .param p1, "observer"    # Landroid/print/IPrinterDiscoveryObserver;
    .param p2, "userId"    # I

    .line 415
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object p1, v0

    check-cast p1, Landroid/print/IPrinterDiscoveryObserver;

    .line 417
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result v0

    .line 419
    .local v0, "resolvedUserId":I
    iget-object v1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 421
    :try_start_e
    invoke-direct {p0, v0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v2

    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I

    move-result v3

    if-eq v2, v3, :cond_1a

    .line 422
    monitor-exit v1

    return-void

    .line 424
    :cond_1a
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;

    move-result-object v2

    .line 425
    .local v2, "userState":Lcom/android/server/print/UserState;
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_e .. :try_end_20} :catchall_31

    .line 426
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 428
    .local v3, "identity":J
    :try_start_24
    invoke-virtual {v2, p1}, Lcom/android/server/print/UserState;->destroyPrinterDiscoverySession(Landroid/print/IPrinterDiscoveryObserver;)V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_2c

    .line 430
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 431
    nop

    .line 432
    return-void

    .line 430
    :catchall_2c
    move-exception v1

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 425
    .end local v2    # "userState":Lcom/android/server/print/UserState;
    .end local v3    # "identity":J
    :catchall_31
    move-exception v2

    :try_start_32
    monitor-exit v1
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v2
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 12
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 690
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object p1, v0

    check-cast p1, Ljava/io/FileDescriptor;

    .line 692
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    const-string v1, "PrintManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_12

    return-void

    .line 694
    :cond_12
    const/4 v0, 0x0

    .line 695
    .local v0, "opti":I
    const/4 v1, 0x0

    move v2, v0

    move v0, v1

    .line 696
    .local v0, "dumpAsProto":Z
    .local v2, "opti":I
    :goto_16
    array-length v3, p3

    if-ge v2, v3, :cond_52

    .line 697
    aget-object v3, p3, v2

    .line 698
    .local v3, "opt":Ljava/lang/String;
    if-eqz v3, :cond_52

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_52

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2d

    if-eq v4, v5, :cond_2c

    .line 699
    goto :goto_52

    .line 701
    :cond_2c
    add-int/lit8 v2, v2, 0x1

    .line 702
    const-string v4, "--proto"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 703
    const/4 v0, 0x1

    goto :goto_51

    .line 705
    :cond_38
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown argument: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "; use -h for help"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 707
    .end local v3    # "opt":Ljava/lang/String;
    :goto_51
    goto :goto_16

    .line 709
    :cond_52
    :goto_52
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 710
    .local v3, "userStatesToDump":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/print/UserState;>;"
    iget-object v4, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 711
    :try_start_5a
    iget-object v5, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 712
    .local v5, "numUserStates":I
    nop

    .local v1, "i":I
    :goto_61
    if-ge v1, v5, :cond_71

    .line 713
    iget-object v6, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/print/UserState;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 712
    add-int/lit8 v1, v1, 0x1

    goto :goto_61

    .line 715
    .end local v1    # "i":I
    .end local v5    # "numUserStates":I
    :cond_71
    monitor-exit v4
    :try_end_72
    .catchall {:try_start_5a .. :try_end_72} :catchall_a5

    .line 717
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 719
    .local v4, "identity":J
    if-eqz v0, :cond_88

    .line 720
    :try_start_78
    new-instance v1, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v6, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v6, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v1, v6}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Landroid/util/proto/ProtoOutputStream;)V

    invoke-direct {p0, v1, v3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/util/ArrayList;)V

    goto :goto_9c

    .line 729
    :catchall_86
    move-exception v1

    goto :goto_a1

    .line 723
    :cond_88
    const-string v1, "PRINT MANAGER STATE (dumpsys print)"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 725
    new-instance v1, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v6, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v7, "  "

    invoke-direct {v6, p2, v7}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-direct {v1, v6}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-direct {p0, v1, v3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/util/ArrayList;)V
    :try_end_9c
    .catchall {:try_start_78 .. :try_end_9c} :catchall_86

    .line 729
    :goto_9c
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 730
    nop

    .line 731
    return-void

    .line 729
    :goto_a1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 715
    .end local v4    # "identity":J
    :catchall_a5
    move-exception v1

    :try_start_a6
    monitor-exit v4
    :try_end_a7
    .catchall {:try_start_a6 .. :try_end_a7} :catchall_a5

    throw v1
.end method

.method public getBindInstantServiceAllowed(I)Z
    .registers 7
    .param p1, "userId"    # I

    .line 735
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 736
    .local v0, "callingUid":I
    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_13

    if-nez v0, :cond_b

    goto :goto_13

    .line 737
    :cond_b
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Can only be called by uid 2000 or 0"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 742
    :cond_13
    :goto_13
    iget-object v1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 743
    const/4 v2, 0x0

    :try_start_17
    invoke-direct {p0, p1, v2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;

    move-result-object v2

    .line 744
    .local v2, "userState":Lcom/android/server/print/UserState;
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_17 .. :try_end_1c} :catchall_2d

    .line 745
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 747
    .local v3, "identity":J
    :try_start_20
    invoke-virtual {v2}, Lcom/android/server/print/UserState;->getBindInstantServiceAllowed()Z

    move-result v1
    :try_end_24
    .catchall {:try_start_20 .. :try_end_24} :catchall_28

    .line 749
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 747
    return v1

    .line 749
    :catchall_28
    move-exception v1

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 744
    .end local v2    # "userState":Lcom/android/server/print/UserState;
    .end local v3    # "identity":J
    :catchall_2d
    move-exception v2

    :try_start_2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw v2
.end method

.method public getCustomPrinterIcon(Landroid/print/PrinterId;I)Landroid/graphics/drawable/Icon;
    .registers 8
    .param p1, "printerId"    # Landroid/print/PrinterId;
    .param p2, "userId"    # I

    .line 241
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object p1, v0

    check-cast p1, Landroid/print/PrinterId;

    .line 243
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result v0

    .line 245
    .local v0, "resolvedUserId":I
    iget-object v1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 247
    :try_start_e
    invoke-direct {p0, v0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v2

    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I

    move-result v3

    if-eq v2, v3, :cond_1b

    .line 248
    const/4 v2, 0x0

    monitor-exit v1

    return-object v2

    .line 250
    :cond_1b
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;

    move-result-object v2

    .line 251
    .local v2, "userState":Lcom/android/server/print/UserState;
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_e .. :try_end_21} :catchall_32

    .line 252
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 254
    .local v3, "identity":J
    :try_start_25
    invoke-virtual {v2, p1}, Lcom/android/server/print/UserState;->getCustomPrinterIcon(Landroid/print/PrinterId;)Landroid/graphics/drawable/Icon;

    move-result-object v1
    :try_end_29
    .catchall {:try_start_25 .. :try_end_29} :catchall_2d

    .line 256
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 254
    return-object v1

    .line 256
    :catchall_2d
    move-exception v1

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 251
    .end local v2    # "userState":Lcom/android/server/print/UserState;
    .end local v3    # "identity":J
    :catchall_32
    move-exception v2

    :try_start_33
    monitor-exit v1
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v2
.end method

.method public getPrintJobInfo(Landroid/print/PrintJobId;II)Landroid/print/PrintJobInfo;
    .registers 10
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .param p2, "appId"    # I
    .param p3, "userId"    # I

    .line 216
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 217
    return-object v0

    .line 220
    :cond_4
    invoke-direct {p0, p3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result v1

    .line 223
    .local v1, "resolvedUserId":I
    iget-object v2, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 225
    :try_start_b
    invoke-direct {p0, v1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v3

    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I

    move-result v4

    if-eq v3, v4, :cond_17

    .line 226
    monitor-exit v2

    return-object v0

    .line 228
    :cond_17
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingAppEnforcingPermissions(I)I

    move-result v0

    .line 229
    .local v0, "resolvedAppId":I
    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;

    move-result-object v3

    .line 230
    .local v3, "userState":Lcom/android/server/print/UserState;
    monitor-exit v2
    :try_end_21
    .catchall {:try_start_b .. :try_end_21} :catchall_32

    .line 231
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 233
    .local v4, "identity":J
    :try_start_25
    invoke-virtual {v3, p1, v0}, Lcom/android/server/print/UserState;->getPrintJobInfo(Landroid/print/PrintJobId;I)Landroid/print/PrintJobInfo;

    move-result-object v2
    :try_end_29
    .catchall {:try_start_25 .. :try_end_29} :catchall_2d

    .line 235
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 233
    return-object v2

    .line 235
    :catchall_2d
    move-exception v2

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 230
    .end local v0    # "resolvedAppId":I
    .end local v3    # "userState":Lcom/android/server/print/UserState;
    .end local v4    # "identity":J
    :catchall_32
    move-exception v0

    :try_start_33
    monitor-exit v2
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v0
.end method

.method public getPrintJobInfos(II)Ljava/util/List;
    .registers 9
    .param p1, "appId"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/print/PrintJobInfo;",
            ">;"
        }
    .end annotation

    .line 195
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result v0

    .line 198
    .local v0, "resolvedUserId":I
    iget-object v1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 200
    :try_start_7
    invoke-direct {p0, v0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v2

    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I

    move-result v3

    if-eq v2, v3, :cond_14

    .line 201
    const/4 v2, 0x0

    monitor-exit v1

    return-object v2

    .line 203
    :cond_14
    invoke-direct {p0, p1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingAppEnforcingPermissions(I)I

    move-result v2

    .line 204
    .local v2, "resolvedAppId":I
    const/4 v3, 0x0

    invoke-direct {p0, v0, v3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;

    move-result-object v3

    .line 205
    .local v3, "userState":Lcom/android/server/print/UserState;
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_2f

    .line 206
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 208
    .local v4, "identity":J
    :try_start_22
    invoke-virtual {v3, v2}, Lcom/android/server/print/UserState;->getPrintJobInfos(I)Ljava/util/List;

    move-result-object v1
    :try_end_26
    .catchall {:try_start_22 .. :try_end_26} :catchall_2a

    .line 210
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 208
    return-object v1

    .line 210
    :catchall_2a
    move-exception v1

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 205
    .end local v2    # "resolvedAppId":I
    .end local v3    # "userState":Lcom/android/server/print/UserState;
    .end local v4    # "identity":J
    :catchall_2f
    move-exception v2

    :try_start_30
    monitor-exit v1
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw v2
.end method

.method public getPrintServiceRecommendations(I)Ljava/util/List;
    .registers 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/printservice/recommendation/RecommendationInfo;",
            ">;"
        }
    .end annotation

    .line 371
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PRINT_SERVICE_RECOMMENDATIONS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    invoke-direct {p0, p1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result v0

    .line 375
    .local v0, "resolvedUserId":I
    iget-object v1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 377
    :try_start_f
    invoke-direct {p0, v0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v3

    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I

    move-result v4

    if-eq v3, v4, :cond_1b

    .line 378
    monitor-exit v1

    return-object v2

    .line 380
    :cond_1b
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;

    move-result-object v2

    .line 381
    .local v2, "userState":Lcom/android/server/print/UserState;
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_f .. :try_end_21} :catchall_32

    .line 382
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 384
    .local v3, "identity":J
    :try_start_25
    invoke-virtual {v2}, Lcom/android/server/print/UserState;->getPrintServiceRecommendations()Ljava/util/List;

    move-result-object v1
    :try_end_29
    .catchall {:try_start_25 .. :try_end_29} :catchall_2d

    .line 386
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 384
    return-object v1

    .line 386
    :catchall_2d
    move-exception v1

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 381
    .end local v2    # "userState":Lcom/android/server/print/UserState;
    .end local v3    # "identity":J
    :catchall_32
    move-exception v2

    :try_start_33
    monitor-exit v1
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v2
.end method

.method public getPrintServices(II)Ljava/util/List;
    .registers 8
    .param p1, "selectionFlags"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/printservice/PrintServiceInfo;",
            ">;"
        }
    .end annotation

    .line 313
    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    .line 316
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PRINT_SERVICES"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result v0

    .line 320
    .local v0, "resolvedUserId":I
    iget-object v1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 322
    :try_start_13
    invoke-direct {p0, v0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v3

    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I

    move-result v4

    if-eq v3, v4, :cond_1f

    .line 323
    monitor-exit v1

    return-object v2

    .line 325
    :cond_1f
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;

    move-result-object v2

    .line 326
    .local v2, "userState":Lcom/android/server/print/UserState;
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_13 .. :try_end_25} :catchall_36

    .line 327
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 329
    .local v3, "identity":J
    :try_start_29
    invoke-virtual {v2, p1}, Lcom/android/server/print/UserState;->getPrintServices(I)Ljava/util/List;

    move-result-object v1
    :try_end_2d
    .catchall {:try_start_29 .. :try_end_2d} :catchall_31

    .line 331
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 329
    return-object v1

    .line 331
    :catchall_31
    move-exception v1

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 326
    .end local v2    # "userState":Lcom/android/server/print/UserState;
    .end local v3    # "identity":J
    :catchall_36
    move-exception v2

    :try_start_37
    monitor-exit v1
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw v2
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 134
    new-instance v0, Lcom/android/server/print/PrintShellCommand;

    invoke-direct {v0, p0}, Lcom/android/server/print/PrintShellCommand;-><init>(Landroid/print/IPrintManager;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/print/PrintShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 135
    return-void
.end method

.method public print(Ljava/lang/String;Landroid/print/IPrintDocumentAdapter;Landroid/print/PrintAttributes;Ljava/lang/String;II)Landroid/os/Bundle;
    .registers 16
    .param p1, "printJobName"    # Ljava/lang/String;
    .param p2, "adapter"    # Landroid/print/IPrintDocumentAdapter;
    .param p3, "attributes"    # Landroid/print/PrintAttributes;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "appId"    # I
    .param p6, "userId"    # I

    .line 140
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object p2, v0

    check-cast p2, Landroid/print/IPrintDocumentAdapter;

    .line 141
    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->isPrintingEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_56

    .line 142
    const/4 v0, 0x0

    .line 143
    .local v0, "disabledMessage":Ljava/lang/CharSequence;
    const-class v2, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 144
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 145
    .local v2, "dpmi":Landroid/app/admin/DevicePolicyManagerInternal;
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 146
    .local v3, "callingUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 148
    .local v4, "identity":J
    :try_start_1f
    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManagerInternal;->getPrintingDisabledReasonForUser(I)Ljava/lang/CharSequence;

    move-result-object v6
    :try_end_23
    .catchall {:try_start_1f .. :try_end_23} :catchall_51

    move-object v0, v6

    .line 150
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 151
    nop

    .line 152
    if-eqz v0, :cond_38

    .line 153
    iget-object v6, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v6, v7, v0, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    .line 154
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 157
    :cond_38
    :try_start_38
    invoke-interface {p2}, Landroid/print/IPrintDocumentAdapter;->start()V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_3b} :catch_3c

    .line 160
    goto :goto_44

    .line 158
    :catch_3c
    move-exception v6

    .line 159
    .local v6, "re":Landroid/os/RemoteException;
    const-string v7, "PrintManagerService"

    const-string v8, "Error calling IPrintDocumentAdapter.start()"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    .end local v6    # "re":Landroid/os/RemoteException;
    :goto_44
    :try_start_44
    invoke-interface {p2}, Landroid/print/IPrintDocumentAdapter;->finish()V
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_47} :catch_48

    .line 165
    goto :goto_50

    .line 163
    :catch_48
    move-exception v6

    .line 164
    .restart local v6    # "re":Landroid/os/RemoteException;
    const-string v7, "PrintManagerService"

    const-string v8, "Error calling IPrintDocumentAdapter.finish()"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    .end local v6    # "re":Landroid/os/RemoteException;
    :goto_50
    return-object v1

    .line 150
    :catchall_51
    move-exception v1

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 168
    .end local v0    # "disabledMessage":Ljava/lang/CharSequence;
    .end local v2    # "dpmi":Landroid/app/admin/DevicePolicyManagerInternal;
    .end local v3    # "callingUserId":I
    .end local v4    # "identity":J
    :cond_56
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    move-object p1, v0

    check-cast p1, Ljava/lang/String;

    .line 169
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    move-object p4, v0

    check-cast p4, Ljava/lang/String;

    .line 171
    invoke-direct {p0, p6}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result v0

    .line 175
    .local v0, "resolvedUserId":I
    iget-object v2, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 177
    :try_start_6b
    invoke-direct {p0, v0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v3

    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I

    move-result v4

    if-eq v3, v4, :cond_77

    .line 178
    monitor-exit v2

    return-object v1

    .line 180
    :cond_77
    invoke-direct {p0, p5}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingAppEnforcingPermissions(I)I

    move-result v6

    .line 181
    .local v6, "resolvedAppId":I
    invoke-direct {p0, p4}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingPackageNameEnforcingSecurity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 182
    .local v5, "resolvedPackageName":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;

    move-result-object v1

    .line 183
    .local v1, "userState":Lcom/android/server/print/UserState;
    monitor-exit v2
    :try_end_85
    .catchall {:try_start_6b .. :try_end_85} :catchall_9a

    .line 184
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    move-wide v7, v2

    .line 186
    .local v7, "identity":J
    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    :try_start_8d
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/print/UserState;->print(Ljava/lang/String;Landroid/print/IPrintDocumentAdapter;Landroid/print/PrintAttributes;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v2
    :try_end_91
    .catchall {:try_start_8d .. :try_end_91} :catchall_95

    .line 189
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 186
    return-object v2

    .line 189
    :catchall_95
    move-exception v2

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 183
    .end local v1    # "userState":Lcom/android/server/print/UserState;
    .end local v5    # "resolvedPackageName":Ljava/lang/String;
    .end local v6    # "resolvedAppId":I
    .end local v7    # "identity":J
    :catchall_9a
    move-exception v1

    :try_start_9b
    monitor-exit v2
    :try_end_9c
    .catchall {:try_start_9b .. :try_end_9c} :catchall_9a

    throw v1
.end method

.method public removePrintJobStateChangeListener(Landroid/print/IPrintJobStateChangeListener;I)V
    .registers 8
    .param p1, "listener"    # Landroid/print/IPrintJobStateChangeListener;
    .param p2, "userId"    # I

    .line 571
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object p1, v0

    check-cast p1, Landroid/print/IPrintJobStateChangeListener;

    .line 573
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result v0

    .line 575
    .local v0, "resolvedUserId":I
    iget-object v1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 577
    :try_start_e
    invoke-direct {p0, v0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v2

    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I

    move-result v3

    if-eq v2, v3, :cond_1a

    .line 578
    monitor-exit v1

    return-void

    .line 580
    :cond_1a
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;

    move-result-object v2

    .line 581
    .local v2, "userState":Lcom/android/server/print/UserState;
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_e .. :try_end_20} :catchall_31

    .line 582
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 584
    .local v3, "identity":J
    :try_start_24
    invoke-virtual {v2, p1}, Lcom/android/server/print/UserState;->removePrintJobStateChangeListener(Landroid/print/IPrintJobStateChangeListener;)V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_2c

    .line 586
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 587
    nop

    .line 588
    return-void

    .line 586
    :catchall_2c
    move-exception v1

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 581
    .end local v2    # "userState":Lcom/android/server/print/UserState;
    .end local v3    # "identity":J
    :catchall_31
    move-exception v2

    :try_start_32
    monitor-exit v1
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v2
.end method

.method public removePrintServiceRecommendationsChangeListener(Landroid/printservice/recommendation/IRecommendationsChangeListener;I)V
    .registers 8
    .param p1, "listener"    # Landroid/printservice/recommendation/IRecommendationsChangeListener;
    .param p2, "userId"    # I

    .line 666
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object p1, v0

    check-cast p1, Landroid/printservice/recommendation/IRecommendationsChangeListener;

    .line 668
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PRINT_SERVICE_RECOMMENDATIONS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result v0

    .line 672
    .local v0, "resolvedUserId":I
    iget-object v1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 675
    :try_start_16
    invoke-direct {p0, v0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v2

    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I

    move-result v3

    if-eq v2, v3, :cond_22

    .line 676
    monitor-exit v1

    return-void

    .line 678
    :cond_22
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;

    move-result-object v2

    .line 679
    .local v2, "userState":Lcom/android/server/print/UserState;
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_16 .. :try_end_28} :catchall_39

    .line 680
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 682
    .local v3, "identity":J
    :try_start_2c
    invoke-virtual {v2, p1}, Lcom/android/server/print/UserState;->removePrintServiceRecommendationsChangeListener(Landroid/printservice/recommendation/IRecommendationsChangeListener;)V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_34

    .line 684
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 685
    nop

    .line 686
    return-void

    .line 684
    :catchall_34
    move-exception v1

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 679
    .end local v2    # "userState":Lcom/android/server/print/UserState;
    .end local v3    # "identity":J
    :catchall_39
    move-exception v2

    :try_start_3a
    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw v2
.end method

.method public removePrintServicesChangeListener(Landroid/print/IPrintServicesChangeListener;I)V
    .registers 8
    .param p1, "listener"    # Landroid/print/IPrintServicesChangeListener;
    .param p2, "userId"    # I

    .line 617
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object p1, v0

    check-cast p1, Landroid/print/IPrintServicesChangeListener;

    .line 619
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PRINT_SERVICES"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result v0

    .line 623
    .local v0, "resolvedUserId":I
    iget-object v1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 625
    :try_start_16
    invoke-direct {p0, v0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v2

    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I

    move-result v3

    if-eq v2, v3, :cond_22

    .line 626
    monitor-exit v1

    return-void

    .line 628
    :cond_22
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;

    move-result-object v2

    .line 629
    .local v2, "userState":Lcom/android/server/print/UserState;
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_16 .. :try_end_28} :catchall_39

    .line 630
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 632
    .local v3, "identity":J
    :try_start_2c
    invoke-virtual {v2, p1}, Lcom/android/server/print/UserState;->removePrintServicesChangeListener(Landroid/print/IPrintServicesChangeListener;)V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_34

    .line 634
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 635
    nop

    .line 636
    return-void

    .line 634
    :catchall_34
    move-exception v1

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 629
    .end local v2    # "userState":Lcom/android/server/print/UserState;
    .end local v3    # "identity":J
    :catchall_39
    move-exception v2

    :try_start_3a
    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw v2
.end method

.method public restartPrintJob(Landroid/print/PrintJobId;II)V
    .registers 10
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .param p2, "appId"    # I
    .param p3, "userId"    # I

    .line 287
    if-eqz p1, :cond_3a

    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->isPrintingEnabled()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_3a

    .line 292
    :cond_9
    invoke-direct {p0, p3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result v0

    .line 295
    .local v0, "resolvedUserId":I
    iget-object v1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 297
    :try_start_10
    invoke-direct {p0, v0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v2

    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I

    move-result v3

    if-eq v2, v3, :cond_1c

    .line 298
    monitor-exit v1

    return-void

    .line 300
    :cond_1c
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingAppEnforcingPermissions(I)I

    move-result v2

    .line 301
    .local v2, "resolvedAppId":I
    const/4 v3, 0x0

    invoke-direct {p0, v0, v3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;

    move-result-object v3

    .line 302
    .local v3, "userState":Lcom/android/server/print/UserState;
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_10 .. :try_end_26} :catchall_37

    .line 303
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 305
    .local v4, "identity":J
    :try_start_2a
    invoke-virtual {v3, p1, v2}, Lcom/android/server/print/UserState;->restartPrintJob(Landroid/print/PrintJobId;I)V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_32

    .line 307
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 308
    nop

    .line 309
    return-void

    .line 307
    :catchall_32
    move-exception v1

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 302
    .end local v2    # "resolvedAppId":I
    .end local v3    # "userState":Lcom/android/server/print/UserState;
    .end local v4    # "identity":J
    :catchall_37
    move-exception v2

    :try_start_38
    monitor-exit v1
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw v2

    .line 289
    .end local v0    # "resolvedUserId":I
    :cond_3a
    :goto_3a
    return-void
.end method

.method public setBindInstantServiceAllowed(IZ)V
    .registers 8
    .param p1, "userId"    # I
    .param p2, "allowed"    # Z

    .line 755
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 756
    .local v0, "callingUid":I
    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_13

    if-nez v0, :cond_b

    goto :goto_13

    .line 757
    :cond_b
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Can only be called by uid 2000 or 0"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 762
    :cond_13
    :goto_13
    iget-object v1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 763
    const/4 v2, 0x0

    :try_start_17
    invoke-direct {p0, p1, v2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;

    move-result-object v2

    .line 764
    .local v2, "userState":Lcom/android/server/print/UserState;
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_17 .. :try_end_1c} :catchall_2d

    .line 765
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 767
    .local v3, "identity":J
    :try_start_20
    invoke-virtual {v2, p2}, Lcom/android/server/print/UserState;->setBindInstantServiceAllowed(Z)V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_28

    .line 769
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 770
    nop

    .line 771
    return-void

    .line 769
    :catchall_28
    move-exception v1

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 764
    .end local v2    # "userState":Lcom/android/server/print/UserState;
    .end local v3    # "identity":J
    :catchall_2d
    move-exception v2

    :try_start_2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw v2
.end method

.method public setPrintServiceEnabled(Landroid/content/ComponentName;ZI)V
    .registers 10
    .param p1, "service"    # Landroid/content/ComponentName;
    .param p2, "isEnabled"    # Z
    .param p3, "userId"    # I

    .line 337
    invoke-direct {p0, p3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result v0

    .line 338
    .local v0, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 341
    .local v1, "appId":I
    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_34

    :try_start_10
    iget-object v2, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    .line 342
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.android.printspooler"

    invoke-virtual {v2, v3, v0}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v2

    .line 341
    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    if-ne v1, v2, :cond_23

    goto :goto_34

    .line 344
    :cond_23
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Only system and print spooler can call this"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_10 .. :try_end_2b} :catch_2b

    .line 346
    :catch_2b
    move-exception v2

    .line 347
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "PrintManagerService"

    const-string v4, "Could not verify caller"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 348
    return-void

    .line 349
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_34
    :goto_34
    nop

    .line 351
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object p1, v2

    check-cast p1, Landroid/content/ComponentName;

    .line 354
    iget-object v2, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 356
    :try_start_3f
    invoke-direct {p0, v0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v3

    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I

    move-result v4

    if-eq v3, v4, :cond_4b

    .line 357
    monitor-exit v2

    return-void

    .line 359
    :cond_4b
    const/4 v3, 0x0

    invoke-direct {p0, v0, v3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;

    move-result-object v3

    .line 360
    .local v3, "userState":Lcom/android/server/print/UserState;
    monitor-exit v2
    :try_end_51
    .catchall {:try_start_3f .. :try_end_51} :catchall_62

    .line 361
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 363
    .local v4, "identity":J
    :try_start_55
    invoke-virtual {v3, p1, p2}, Lcom/android/server/print/UserState;->setPrintServiceEnabled(Landroid/content/ComponentName;Z)V
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_5d

    .line 365
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 366
    nop

    .line 367
    return-void

    .line 365
    :catchall_5d
    move-exception v2

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 360
    .end local v3    # "userState":Lcom/android/server/print/UserState;
    .end local v4    # "identity":J
    :catchall_62
    move-exception v3

    :try_start_63
    monitor-exit v2
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_62

    throw v3
.end method

.method public startPrinterDiscovery(Landroid/print/IPrinterDiscoveryObserver;Ljava/util/List;I)V
    .registers 9
    .param p1, "observer"    # Landroid/print/IPrinterDiscoveryObserver;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/print/IPrinterDiscoveryObserver;",
            "Ljava/util/List<",
            "Landroid/print/PrinterId;",
            ">;I)V"
        }
    .end annotation

    .line 437
    .local p2, "priorityList":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object p1, v0

    check-cast p1, Landroid/print/IPrinterDiscoveryObserver;

    .line 438
    if-eqz p2, :cond_12

    .line 439
    const-string v0, "PrinterId"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkCollectionElementsNotNull(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    move-object p2, v0

    check-cast p2, Ljava/util/List;

    .line 443
    :cond_12
    invoke-direct {p0, p3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result v0

    .line 445
    .local v0, "resolvedUserId":I
    iget-object v1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 447
    :try_start_19
    invoke-direct {p0, v0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v2

    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I

    move-result v3

    if-eq v2, v3, :cond_25

    .line 448
    monitor-exit v1

    return-void

    .line 450
    :cond_25
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;

    move-result-object v2

    .line 451
    .local v2, "userState":Lcom/android/server/print/UserState;
    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_19 .. :try_end_2b} :catchall_3c

    .line 452
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 454
    .local v3, "identity":J
    :try_start_2f
    invoke-virtual {v2, p1, p2}, Lcom/android/server/print/UserState;->startPrinterDiscovery(Landroid/print/IPrinterDiscoveryObserver;Ljava/util/List;)V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_37

    .line 456
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 457
    nop

    .line 458
    return-void

    .line 456
    :catchall_37
    move-exception v1

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 451
    .end local v2    # "userState":Lcom/android/server/print/UserState;
    .end local v3    # "identity":J
    :catchall_3c
    move-exception v2

    :try_start_3d
    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw v2
.end method

.method public startPrinterStateTracking(Landroid/print/PrinterId;I)V
    .registers 8
    .param p1, "printerId"    # Landroid/print/PrinterId;
    .param p2, "userId"    # I

    .line 504
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object p1, v0

    check-cast p1, Landroid/print/PrinterId;

    .line 506
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result v0

    .line 508
    .local v0, "resolvedUserId":I
    iget-object v1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 510
    :try_start_e
    invoke-direct {p0, v0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v2

    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I

    move-result v3

    if-eq v2, v3, :cond_1a

    .line 511
    monitor-exit v1

    return-void

    .line 513
    :cond_1a
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;

    move-result-object v2

    .line 514
    .local v2, "userState":Lcom/android/server/print/UserState;
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_e .. :try_end_20} :catchall_31

    .line 515
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 517
    .local v3, "identity":J
    :try_start_24
    invoke-virtual {v2, p1}, Lcom/android/server/print/UserState;->startPrinterStateTracking(Landroid/print/PrinterId;)V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_2c

    .line 519
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 520
    nop

    .line 521
    return-void

    .line 519
    :catchall_2c
    move-exception v1

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 514
    .end local v2    # "userState":Lcom/android/server/print/UserState;
    .end local v3    # "identity":J
    :catchall_31
    move-exception v2

    :try_start_32
    monitor-exit v1
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v2
.end method

.method public stopPrinterDiscovery(Landroid/print/IPrinterDiscoveryObserver;I)V
    .registers 8
    .param p1, "observer"    # Landroid/print/IPrinterDiscoveryObserver;
    .param p2, "userId"    # I

    .line 462
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object p1, v0

    check-cast p1, Landroid/print/IPrinterDiscoveryObserver;

    .line 464
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result v0

    .line 466
    .local v0, "resolvedUserId":I
    iget-object v1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 468
    :try_start_e
    invoke-direct {p0, v0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v2

    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I

    move-result v3

    if-eq v2, v3, :cond_1a

    .line 469
    monitor-exit v1

    return-void

    .line 471
    :cond_1a
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;

    move-result-object v2

    .line 472
    .local v2, "userState":Lcom/android/server/print/UserState;
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_e .. :try_end_20} :catchall_31

    .line 473
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 475
    .local v3, "identity":J
    :try_start_24
    invoke-virtual {v2, p1}, Lcom/android/server/print/UserState;->stopPrinterDiscovery(Landroid/print/IPrinterDiscoveryObserver;)V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_2c

    .line 477
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 478
    nop

    .line 479
    return-void

    .line 477
    :catchall_2c
    move-exception v1

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 472
    .end local v2    # "userState":Lcom/android/server/print/UserState;
    .end local v3    # "identity":J
    :catchall_31
    move-exception v2

    :try_start_32
    monitor-exit v1
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v2
.end method

.method public stopPrinterStateTracking(Landroid/print/PrinterId;I)V
    .registers 8
    .param p1, "printerId"    # Landroid/print/PrinterId;
    .param p2, "userId"    # I

    .line 525
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object p1, v0

    check-cast p1, Landroid/print/PrinterId;

    .line 527
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result v0

    .line 529
    .local v0, "resolvedUserId":I
    iget-object v1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 531
    :try_start_e
    invoke-direct {p0, v0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v2

    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I

    move-result v3

    if-eq v2, v3, :cond_1a

    .line 532
    monitor-exit v1

    return-void

    .line 534
    :cond_1a
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;

    move-result-object v2

    .line 535
    .local v2, "userState":Lcom/android/server/print/UserState;
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_e .. :try_end_20} :catchall_31

    .line 536
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 538
    .local v3, "identity":J
    :try_start_24
    invoke-virtual {v2, p1}, Lcom/android/server/print/UserState;->stopPrinterStateTracking(Landroid/print/PrinterId;)V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_2c

    .line 540
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 541
    nop

    .line 542
    return-void

    .line 540
    :catchall_2c
    move-exception v1

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 535
    .end local v2    # "userState":Lcom/android/server/print/UserState;
    .end local v3    # "identity":J
    :catchall_31
    move-exception v2

    :try_start_32
    monitor-exit v1
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v2
.end method

.method public validatePrinters(Ljava/util/List;I)V
    .registers 8
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/print/PrinterId;",
            ">;I)V"
        }
    .end annotation

    .line 483
    .local p1, "printerIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    const-string v0, "PrinterId"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkCollectionElementsNotNull(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    move-object p1, v0

    check-cast p1, Ljava/util/List;

    .line 485
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result v0

    .line 487
    .local v0, "resolvedUserId":I
    iget-object v1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 489
    :try_start_10
    invoke-direct {p0, v0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v2

    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I

    move-result v3

    if-eq v2, v3, :cond_1c

    .line 490
    monitor-exit v1

    return-void

    .line 492
    :cond_1c
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;

    move-result-object v2

    .line 493
    .local v2, "userState":Lcom/android/server/print/UserState;
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_10 .. :try_end_22} :catchall_33

    .line 494
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 496
    .local v3, "identity":J
    :try_start_26
    invoke-virtual {v2, p1}, Lcom/android/server/print/UserState;->validatePrinters(Ljava/util/List;)V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_2e

    .line 498
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 499
    nop

    .line 500
    return-void

    .line 498
    :catchall_2e
    move-exception v1

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 493
    .end local v2    # "userState":Lcom/android/server/print/UserState;
    .end local v3    # "identity":J
    :catchall_33
    move-exception v2

    :try_start_34
    monitor-exit v1
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw v2
.end method
