.class Lcom/android/server/am/PendingRemoteAnimationRegistry;
.super Ljava/lang/Object;
.source "PendingRemoteAnimationRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/PendingRemoteAnimationRegistry$Entry;
    }
.end annotation


# static fields
.field private static final TIMEOUT_MS:J = 0xbb8L


# instance fields
.field private final mEntries:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/PendingRemoteAnimationRegistry$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Handler;)V
    .registers 4
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PendingRemoteAnimationRegistry;->mEntries:Landroid/util/ArrayMap;

    .line 39
    iput-object p1, p0, Lcom/android/server/am/PendingRemoteAnimationRegistry;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 40
    iput-object p2, p0, Lcom/android/server/am/PendingRemoteAnimationRegistry;->mHandler:Landroid/os/Handler;

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/PendingRemoteAnimationRegistry;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/PendingRemoteAnimationRegistry;

    .line 30
    iget-object v0, p0, Lcom/android/server/am/PendingRemoteAnimationRegistry;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/PendingRemoteAnimationRegistry;)Lcom/android/server/am/ActivityManagerService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/PendingRemoteAnimationRegistry;

    .line 30
    iget-object v0, p0, Lcom/android/server/am/PendingRemoteAnimationRegistry;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/am/PendingRemoteAnimationRegistry;)Landroid/util/ArrayMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/PendingRemoteAnimationRegistry;

    .line 30
    iget-object v0, p0, Lcom/android/server/am/PendingRemoteAnimationRegistry;->mEntries:Landroid/util/ArrayMap;

    return-object v0
.end method


# virtual methods
.method addPendingAnimation(Ljava/lang/String;Landroid/view/RemoteAnimationAdapter;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "adapter"    # Landroid/view/RemoteAnimationAdapter;

    .line 47
    iget-object v0, p0, Lcom/android/server/am/PendingRemoteAnimationRegistry;->mEntries:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/server/am/PendingRemoteAnimationRegistry$Entry;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/am/PendingRemoteAnimationRegistry$Entry;-><init>(Lcom/android/server/am/PendingRemoteAnimationRegistry;Ljava/lang/String;Landroid/view/RemoteAnimationAdapter;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    return-void
.end method

.method overrideOptionsIfNeeded(Ljava/lang/String;Landroid/app/ActivityOptions;)Landroid/app/ActivityOptions;
    .registers 5
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "options"    # Landroid/app/ActivityOptions;

    .line 56
    iget-object v0, p0, Lcom/android/server/am/PendingRemoteAnimationRegistry;->mEntries:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/PendingRemoteAnimationRegistry$Entry;

    .line 57
    .local v0, "entry":Lcom/android/server/am/PendingRemoteAnimationRegistry$Entry;
    if-nez v0, :cond_b

    .line 58
    return-object p2

    .line 60
    :cond_b
    if-nez p2, :cond_14

    .line 61
    iget-object v1, v0, Lcom/android/server/am/PendingRemoteAnimationRegistry$Entry;->adapter:Landroid/view/RemoteAnimationAdapter;

    invoke-static {v1}, Landroid/app/ActivityOptions;->makeRemoteAnimation(Landroid/view/RemoteAnimationAdapter;)Landroid/app/ActivityOptions;

    move-result-object p2

    goto :goto_19

    .line 63
    :cond_14
    iget-object v1, v0, Lcom/android/server/am/PendingRemoteAnimationRegistry$Entry;->adapter:Landroid/view/RemoteAnimationAdapter;

    invoke-virtual {p2, v1}, Landroid/app/ActivityOptions;->setRemoteAnimationAdapter(Landroid/view/RemoteAnimationAdapter;)V

    .line 65
    :goto_19
    iget-object v1, p0, Lcom/android/server/am/PendingRemoteAnimationRegistry;->mEntries:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    return-object p2
.end method
