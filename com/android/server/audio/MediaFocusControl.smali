.class public Lcom/android/server/audio/MediaFocusControl;
.super Ljava/lang/Object;
.source "MediaFocusControl.java"

# interfaces
.implements Lcom/android/server/audio/PlayerFocusEnforcer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final DUCKING_IN_APP_SDK_LEVEL:I = 0x19

.field static final ENFORCE_DUCKING:Z = true

.field static final ENFORCE_DUCKING_FOR_NEW:Z = true

.field static final ENFORCE_MUTING_FOR_RING_OR_CALL:Z = true

.field private static final MAX_STACK_SIZE:I = 0x64

.field private static final NAVI_APP_PKG_NAME:[Ljava/lang/String;

.field private static final RING_CALL_MUTING_ENFORCEMENT_DELAY_MS:I = 0x64

.field private static final TAG:Ljava/lang/String; = "MediaFocusControl"

.field private static final USAGES_TO_MUTE_IN_RING_OR_CALL:[I

.field private static final VOICE_ASSIST_PKG_NAME:Ljava/lang/String; = "com.miui.voiceassist"

.field private static final mAudioFocusLock:Ljava/lang/Object;

.field private static final mEventLogger:Lcom/android/server/audio/AudioEventLogger;


# instance fields
.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mContext:Landroid/content/Context;

.field private mExtFocusChangeCounter:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mExtFocusChangeLock"
    .end annotation
.end field

.field private final mExtFocusChangeLock:Ljava/lang/Object;

.field private mFocusEnforcer:Lcom/android/server/audio/PlayerFocusEnforcer;

.field private mFocusFollowers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/audiopolicy/IAudioPolicyCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mFocusOwnersForFocusPolicy:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/audio/FocusRequester;",
            ">;"
        }
    .end annotation
.end field

.field private mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

.field private final mFocusStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/android/server/audio/FocusRequester;",
            ">;"
        }
    .end annotation
.end field

.field private mNotifyFocusOwnerOnDuck:Z

.field private mRingOrCallActive:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 86
    const-string v0, "com.autonavi.minimap"

    const-string v1, "com.baidu.BaiduMap"

    const-string v2, "com.tencent.map"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/audio/MediaFocusControl;->NAVI_APP_PKG_NAME:[Ljava/lang/String;

    .line 151
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    .line 158
    new-instance v0, Lcom/android/server/audio/AudioEventLogger;

    const-string v1, "focus commands as seen by MediaFocusControl"

    const/16 v2, 0x32

    invoke-direct {v0, v2, v1}, Lcom/android/server/audio/AudioEventLogger;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/audio/MediaFocusControl;->mEventLogger:Lcom/android/server/audio/AudioEventLogger;

    .line 725
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_28

    sput-object v0, Lcom/android/server/audio/MediaFocusControl;->USAGES_TO_MUTE_IN_RING_OR_CALL:[I

    return-void

    nop

    :array_28
    .array-data 4
        0x1
        0xe
    .end array-data
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/android/server/audio/PlayerFocusEnforcer;)V
    .registers 5
    .param p1, "cntxt"    # Landroid/content/Context;
    .param p2, "pfe"    # Lcom/android/server/audio/PlayerFocusEnforcer;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/audio/MediaFocusControl;->mRingOrCallActive:Z

    .line 95
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mExtFocusChangeLock:Ljava/lang/Object;

    .line 212
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 463
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/audio/MediaFocusControl;->mNotifyFocusOwnerOnDuck:Z

    .line 471
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFollowers:Ljava/util/ArrayList;

    .line 508
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 513
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusOwnersForFocusPolicy:Ljava/util/HashMap;

    .line 100
    iput-object p1, p0, Lcom/android/server/audio/MediaFocusControl;->mContext:Landroid/content/Context;

    .line 101
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mContext:Landroid/content/Context;

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mAppOps:Landroid/app/AppOpsManager;

    .line 102
    iput-object p2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusEnforcer:Lcom/android/server/audio/PlayerFocusEnforcer;

    .line 103
    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .registers 1

    .line 53
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/audio/MediaFocusControl;)Landroid/media/audiopolicy/IAudioPolicyCallback;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/MediaFocusControl;

    .line 53
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/audio/MediaFocusControl;Landroid/os/IBinder;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/MediaFocusControl;
    .param p1, "x1"    # Landroid/os/IBinder;

    .line 53
    invoke-direct {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->removeFocusEntryForExtPolicy(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/audio/MediaFocusControl;Landroid/os/IBinder;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/MediaFocusControl;
    .param p1, "x1"    # Landroid/os/IBinder;

    .line 53
    invoke-direct {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->removeFocusStackEntryOnDeath(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/audio/MediaFocusControl;)Ljava/util/Stack;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/MediaFocusControl;

    .line 53
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/audio/MediaFocusControl;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/MediaFocusControl;

    .line 53
    iget-boolean v0, p0, Lcom/android/server/audio/MediaFocusControl;->mRingOrCallActive:Z

    return v0
.end method

.method static synthetic access$600()[I
    .registers 1

    .line 53
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->USAGES_TO_MUTE_IN_RING_OR_CALL:[I

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/audio/MediaFocusControl;)Lcom/android/server/audio/PlayerFocusEnforcer;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/MediaFocusControl;

    .line 53
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusEnforcer:Lcom/android/server/audio/PlayerFocusEnforcer;

    return-object v0
.end method

.method private canReassignAudioFocus()Z
    .registers 2

    .line 344
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FocusRequester;

    invoke-direct {p0, v0}, Lcom/android/server/audio/MediaFocusControl;->isLockedFocusOwner(Lcom/android/server/audio/FocusRequester;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 345
    const/4 v0, 0x0

    return v0

    .line 347
    :cond_18
    const/4 v0, 0x1

    return v0
.end method

.method private dumpExtFocusPolicyFocusOwners(Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 697
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusOwnersForFocusPolicy:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 698
    .local v0, "owners":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/audio/FocusRequester;>;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 699
    .local v1, "ownerIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/audio/FocusRequester;>;>;"
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 700
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 701
    .local v2, "owner":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/audio/FocusRequester;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/FocusRequester;

    .line 702
    .local v3, "fr":Lcom/android/server/audio/FocusRequester;
    invoke-virtual {v3, p1}, Lcom/android/server/audio/FocusRequester;->dump(Ljava/io/PrintWriter;)V

    .line 703
    .end local v2    # "owner":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/audio/FocusRequester;>;"
    .end local v3    # "fr":Lcom/android/server/audio/FocusRequester;
    goto :goto_a

    .line 704
    :cond_20
    return-void
.end method

.method private dumpFocusStack(Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 219
    const-string v0, "\nAudio Focus stack entries (last is top of stack):"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 220
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v0

    .line 221
    :try_start_8
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 222
    .local v1, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/FocusRequester;>;"
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 223
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v2, p1}, Lcom/android/server/audio/FocusRequester;->dump(Ljava/io/PrintWriter;)V

    goto :goto_e

    .line 225
    :cond_1e
    const-string v2, "\n"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 226
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    if-nez v2, :cond_2d

    .line 227
    const-string v2, "No external focus policy\n"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4b

    .line 229
    :cond_2d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "External focus policy: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", focus owners:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 230
    invoke-direct {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->dumpExtFocusPolicyFocusOwners(Ljava/io/PrintWriter;)V

    .line 232
    .end local v1    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/FocusRequester;>;"
    :goto_4b
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_8 .. :try_end_4c} :catchall_88

    .line 233
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " Notify on duck:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/audio/MediaFocusControl;->mNotifyFocusOwnerOnDuck:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " In ring or call: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/audio/MediaFocusControl;->mRingOrCallActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 236
    return-void

    .line 232
    :catchall_88
    move-exception v1

    :try_start_89
    monitor-exit v0
    :try_end_8a
    .catchall {:try_start_89 .. :try_end_8a} :catchall_88

    throw v1
.end method

.method protected static getFocusRampTimeMs(ILandroid/media/AudioAttributes;)I
    .registers 3
    .param p0, "focusGain"    # I
    .param p1, "attr"    # Landroid/media/AudioAttributes;

    .line 735
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v0

    packed-switch v0, :pswitch_data_12

    .line 756
    :pswitch_7
    const/4 v0, 0x0

    return v0

    .line 744
    :pswitch_9
    const/16 v0, 0x2bc

    return v0

    .line 753
    :pswitch_c
    const/16 v0, 0x1f4

    return v0

    .line 738
    :pswitch_f
    const/16 v0, 0x3e8

    return v0

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_f
        :pswitch_c
        :pswitch_c
        :pswitch_9
        :pswitch_c
        :pswitch_9
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_9
        :pswitch_9
        :pswitch_c
        :pswitch_f
        :pswitch_7
        :pswitch_9
    .end packed-switch
.end method

.method private isLockedFocusOwner(Lcom/android/server/audio/FocusRequester;)Z
    .registers 3
    .param p1, "fr"    # Lcom/android/server/audio/FocusRequester;

    .line 351
    const-string v0, "AudioFocus_For_Phone_Ring_And_Calls"

    invoke-virtual {p1, v0}, Lcom/android/server/audio/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {p1}, Lcom/android/server/audio/FocusRequester;->isLockedFocusOwner()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method

.method private isNaviFocusOwner(Lcom/android/server/audio/FocusRequester;)Z
    .registers 3
    .param p1, "fr"    # Lcom/android/server/audio/FocusRequester;

    .line 356
    invoke-virtual {p1}, Lcom/android/server/audio/FocusRequester;->getGrantFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private notifyTopOfAudioFocusStack()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mAudioFocusLock"
    .end annotation

    .line 181
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 182
    invoke-direct {p0}, Lcom/android/server/audio/MediaFocusControl;->canReassignAudioFocus()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 183
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FocusRequester;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/audio/FocusRequester;->handleFocusGain(I)V

    .line 186
    :cond_1a
    return-void
.end method

.method private propagateFocusLossFromGain_syncAf(ILcom/android/server/audio/FocusRequester;Z)V
    .registers 9
    .param p1, "focusGain"    # I
    .param p2, "fr"    # Lcom/android/server/audio/FocusRequester;
    .param p3, "forceDuck"    # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mAudioFocusLock"
    .end annotation

    .line 196
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 199
    .local v0, "clientsToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/FocusRequester;

    .line 200
    .local v2, "focusLoser":Lcom/android/server/audio/FocusRequester;
    nop

    .line 201
    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/audio/FocusRequester;->handleFocusLossFromGain(ILcom/android/server/audio/FocusRequester;Z)Z

    move-result v3

    .line 202
    .local v3, "isDefinitiveLoss":Z
    if-eqz v3, :cond_25

    .line 203
    invoke-virtual {v2}, Lcom/android/server/audio/FocusRequester;->getClientId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    .end local v2    # "focusLoser":Lcom/android/server/audio/FocusRequester;
    .end local v3    # "isDefinitiveLoss":Z
    :cond_25
    goto :goto_b

    .line 206
    :cond_26
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 207
    .local v2, "clientToRemove":Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/audio/MediaFocusControl;->removeFocusStackEntry(Ljava/lang/String;ZZ)V

    .line 209
    .end local v2    # "clientToRemove":Ljava/lang/String;
    goto :goto_2a

    .line 210
    :cond_3c
    return-void
.end method

.method private pushBelowLockedFocusOwners(Lcom/android/server/audio/FocusRequester;)I
    .registers 7
    .param p1, "nfr"    # Lcom/android/server/audio/FocusRequester;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mAudioFocusLock"
    .end annotation

    .line 381
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    .line 382
    .local v0, "lastLockedFocusOwnerIndex":I
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "index":I
    :goto_e
    if-ltz v1, :cond_22

    .line 383
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/FocusRequester;

    invoke-direct {p0, v3}, Lcom/android/server/audio/MediaFocusControl;->isLockedFocusOwner(Lcom/android/server/audio/FocusRequester;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 384
    move v0, v1

    .line 382
    :cond_1f
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    .line 387
    .end local v1    # "index":I
    :cond_22
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    if-ne v0, v1, :cond_44

    .line 389
    const-string v1, "MediaFocusControl"

    const-string v3, "No exclusive focus owner found in propagateFocusLossFromGain_syncAf()"

    new-instance v4, Ljava/lang/Exception;

    invoke-direct {v4}, Ljava/lang/Exception;-><init>()V

    invoke-static {v1, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 392
    invoke-virtual {p1}, Lcom/android/server/audio/FocusRequester;->getGainRequest()I

    move-result v1

    const/4 v3, 0x0

    invoke-direct {p0, v1, p1, v3}, Lcom/android/server/audio/MediaFocusControl;->propagateFocusLossFromGain_syncAf(ILcom/android/server/audio/FocusRequester;Z)V

    .line 393
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    return v2

    .line 396
    :cond_44
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1, p1, v0}, Ljava/util/Stack;->insertElementAt(Ljava/lang/Object;I)V

    .line 397
    const/4 v1, 0x2

    return v1
.end method

.method private pushBelowNaviFocusOwners(Lcom/android/server/audio/FocusRequester;)I
    .registers 7
    .param p1, "nfr"    # Lcom/android/server/audio/FocusRequester;

    .line 412
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    .line 413
    .local v0, "lastLockedFocusOwnerIndex":I
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "index":I
    :goto_e
    if-ltz v1, :cond_22

    .line 414
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/FocusRequester;

    invoke-direct {p0, v3}, Lcom/android/server/audio/MediaFocusControl;->isNaviFocusOwner(Lcom/android/server/audio/FocusRequester;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 415
    move v0, v1

    .line 413
    :cond_1f
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    .line 418
    .end local v1    # "index":I
    :cond_22
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    if-ne v0, v1, :cond_44

    .line 420
    const-string v1, "MediaFocusControl"

    const-string v3, "No navigation focus owner found in propagateFocusLossFromGain_syncAf()"

    new-instance v4, Ljava/lang/Exception;

    invoke-direct {v4}, Ljava/lang/Exception;-><init>()V

    invoke-static {v1, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 423
    invoke-virtual {p1}, Lcom/android/server/audio/FocusRequester;->getGainRequest()I

    move-result v1

    const/4 v3, 0x0

    invoke-direct {p0, v1, p1, v3}, Lcom/android/server/audio/MediaFocusControl;->propagateFocusLossFromGain_syncAf(ILcom/android/server/audio/FocusRequester;Z)V

    .line 424
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    return v2

    .line 427
    :cond_44
    const-string v1, "MediaFocusControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insert Focus below:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3, v0}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v3}, Lcom/android/server/audio/FocusRequester;->getClientId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    invoke-virtual {p1}, Lcom/android/server/audio/FocusRequester;->getClientId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 427
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1, p1, v0}, Ljava/util/Stack;->insertElementAt(Ljava/lang/Object;I)V

    .line 430
    const/4 v1, 0x2

    return v1
.end method

.method private removeFocusEntryForExtPolicy(Landroid/os/IBinder;)V
    .registers 8
    .param p1, "cb"    # Landroid/os/IBinder;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mAudioFocusLock"
    .end annotation

    .line 315
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusOwnersForFocusPolicy:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 316
    return-void

    .line 318
    :cond_9
    const/4 v0, 0x0

    .line 319
    .local v0, "released":Z
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusOwnersForFocusPolicy:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 320
    .local v1, "owners":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/audio/FocusRequester;>;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 321
    .local v2, "ownerIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/audio/FocusRequester;>;>;"
    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 322
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 323
    .local v3, "owner":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/audio/FocusRequester;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/audio/FocusRequester;

    .line 324
    .local v4, "fr":Lcom/android/server/audio/FocusRequester;
    invoke-virtual {v4, p1}, Lcom/android/server/audio/FocusRequester;->hasSameBinder(Landroid/os/IBinder;)Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 325
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 326
    invoke-virtual {v4}, Lcom/android/server/audio/FocusRequester;->release()V

    .line 327
    invoke-virtual {v4}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/audio/MediaFocusControl;->notifyExtFocusPolicyFocusAbandon_syncAf(Landroid/media/AudioFocusInfo;)Z

    .line 328
    goto :goto_3b

    .line 330
    .end local v3    # "owner":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/audio/FocusRequester;>;"
    .end local v4    # "fr":Lcom/android/server/audio/FocusRequester;
    :cond_3a
    goto :goto_14

    .line 331
    :cond_3b
    :goto_3b
    return-void
.end method

.method private removeFocusStackEntry(Ljava/lang/String;ZZ)V
    .registers 9
    .param p1, "clientToRemove"    # Ljava/lang/String;
    .param p2, "signal"    # Z
    .param p3, "notifyFocusFollowers"    # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mAudioFocusLock"
    .end annotation

    .line 248
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_34

    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 251
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FocusRequester;

    .line 252
    .local v0, "fr":Lcom/android/server/audio/FocusRequester;
    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->release()V

    .line 253
    if-eqz p3, :cond_2e

    .line 254
    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    move-result-object v1

    .line 255
    .local v1, "afi":Landroid/media/AudioFocusInfo;
    invoke-virtual {v1}, Landroid/media/AudioFocusInfo;->clearLossReceived()V

    .line 256
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyFocusLoss_syncAf(Landroid/media/AudioFocusInfo;Z)V

    .line 258
    .end local v1    # "afi":Landroid/media/AudioFocusInfo;
    :cond_2e
    if-eqz p2, :cond_33

    .line 260
    invoke-direct {p0}, Lcom/android/server/audio/MediaFocusControl;->notifyTopOfAudioFocusStack()V

    .line 262
    .end local v0    # "fr":Lcom/android/server/audio/FocusRequester;
    :cond_33
    goto :goto_69

    .line 267
    :cond_34
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 268
    .local v0, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/FocusRequester;>;"
    :goto_3a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_69

    .line 269
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/FocusRequester;

    .line 270
    .local v1, "fr":Lcom/android/server/audio/FocusRequester;
    invoke-virtual {v1, p1}, Lcom/android/server/audio/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_68

    .line 271
    const-string v2, "MediaFocusControl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AudioFocus  removeFocusStackEntry(): removing entry for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 275
    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->release()V

    .line 277
    .end local v1    # "fr":Lcom/android/server/audio/FocusRequester;
    :cond_68
    goto :goto_3a

    .line 279
    .end local v0    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/FocusRequester;>;"
    :cond_69
    :goto_69
    return-void
.end method

.method private removeFocusStackEntryOnDeath(Landroid/os/IBinder;)V
    .registers 8
    .param p1, "cb"    # Landroid/os/IBinder;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mAudioFocusLock"
    .end annotation

    .line 287
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 288
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/FocusRequester;->hasSameBinder(Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 291
    .local v0, "isTopOfStackForClientToRemove":Z
    :goto_19
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 292
    .local v1, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/FocusRequester;>;"
    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 293
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/FocusRequester;

    .line 294
    .local v2, "fr":Lcom/android/server/audio/FocusRequester;
    invoke-virtual {v2, p1}, Lcom/android/server/audio/FocusRequester;->hasSameBinder(Landroid/os/IBinder;)Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 295
    const-string v3, "MediaFocusControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AudioFocus  removeFocusStackEntryOnDeath(): removing entry for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 298
    invoke-virtual {v2}, Lcom/android/server/audio/FocusRequester;->release()V

    .line 300
    .end local v2    # "fr":Lcom/android/server/audio/FocusRequester;
    :cond_4d
    goto :goto_1f

    .line 301
    :cond_4e
    if-eqz v0, :cond_53

    .line 304
    invoke-direct {p0}, Lcom/android/server/audio/MediaFocusControl;->notifyTopOfAudioFocusStack()V

    .line 306
    :cond_53
    return-void
.end method

.method private runAudioCheckerForRingOrCallAsync(Z)V
    .registers 3
    .param p1, "enteringRingOrCall"    # Z

    .line 970
    new-instance v0, Lcom/android/server/audio/MediaFocusControl$2;

    invoke-direct {v0, p0, p1}, Lcom/android/server/audio/MediaFocusControl$2;-><init>(Lcom/android/server/audio/MediaFocusControl;Z)V

    .line 989
    invoke-virtual {v0}, Lcom/android/server/audio/MediaFocusControl$2;->start()V

    .line 990
    return-void
.end method

.method private shouldLockForNavigation(Ljava/lang/String;)Z
    .registers 6
    .param p1, "callingPackageName"    # Ljava/lang/String;

    .line 360
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 361
    .local v0, "lowerPackageName":Ljava/lang/String;
    const/4 v1, 0x0

    move v2, v1

    .local v2, "index":I
    :goto_6
    sget-object v3, Lcom/android/server/audio/MediaFocusControl;->NAVI_APP_PKG_NAME:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_1e

    .line 362
    sget-object v3, Lcom/android/server/audio/MediaFocusControl;->NAVI_APP_PKG_NAME:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 363
    const/4 v1, 0x1

    return v1

    .line 361
    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 366
    .end local v2    # "index":I
    :cond_1e
    return v1
.end method


# virtual methods
.method protected abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Landroid/media/AudioAttributes;Ljava/lang/String;)I
    .registers 19
    .param p1, "fl"    # Landroid/media/IAudioFocusDispatcher;
    .param p2, "clientId"    # Ljava/lang/String;
    .param p3, "aa"    # Landroid/media/AudioAttributes;
    .param p4, "callingPackageName"    # Ljava/lang/String;

    move-object v1, p0

    move-object/from16 v11, p2

    .line 923
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mEventLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v2, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "abandonAudioFocus() from uid/pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 924
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 925
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " clientId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v3, "MediaFocusControl"

    .line 927
    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioEventLogger$StringEvent;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v2

    .line 923
    invoke-virtual {v0, v2}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 930
    const/4 v12, 0x1

    :try_start_3d
    sget-object v13, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v13
    :try_end_40
    .catch Ljava/util/ConcurrentModificationException; {:try_start_3d .. :try_end_40} :catch_81

    .line 932
    :try_start_40
    iget-object v0, v1, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    if-eqz v0, :cond_5f

    .line 933
    new-instance v0, Landroid/media/AudioFocusInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, v0

    move-object/from16 v3, p3

    move-object v5, v11

    move-object/from16 v6, p4

    invoke-direct/range {v2 .. v10}, Landroid/media/AudioFocusInfo;-><init>(Landroid/media/AudioAttributes;ILjava/lang/String;Ljava/lang/String;IIII)V

    .line 936
    .local v0, "afi":Landroid/media/AudioFocusInfo;
    invoke-virtual {v1, v0}, Lcom/android/server/audio/MediaFocusControl;->notifyExtFocusPolicyFocusAbandon_syncAf(Landroid/media/AudioFocusInfo;)Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 937
    monitor-exit v13

    return v12

    .line 941
    .end local v0    # "afi":Landroid/media/AudioFocusInfo;
    :cond_5f
    iget-boolean v0, v1, Lcom/android/server/audio/MediaFocusControl;->mRingOrCallActive:Z

    const-string v2, "AudioFocus_For_Phone_Ring_And_Calls"

    .line 942
    invoke-virtual {v2, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_6c

    move v2, v12

    goto :goto_6d

    :cond_6c
    move v2, v3

    :goto_6d
    and-int/2addr v0, v2

    .line 943
    .local v0, "exitingRingOrCall":Z
    if-eqz v0, :cond_72

    iput-boolean v3, v1, Lcom/android/server/audio/MediaFocusControl;->mRingOrCallActive:Z

    .line 945
    :cond_72
    invoke-direct {v1, v11, v12, v12}, Lcom/android/server/audio/MediaFocusControl;->removeFocusStackEntry(Ljava/lang/String;ZZ)V

    .line 947
    and-int v2, v12, v0

    if-eqz v2, :cond_7c

    .line 948
    invoke-direct {v1, v3}, Lcom/android/server/audio/MediaFocusControl;->runAudioCheckerForRingOrCallAsync(Z)V

    .line 950
    .end local v0    # "exitingRingOrCall":Z
    :cond_7c
    monitor-exit v13

    .line 957
    goto :goto_9b

    .line 950
    :catchall_7e
    move-exception v0

    monitor-exit v13
    :try_end_80
    .catchall {:try_start_40 .. :try_end_80} :catchall_7e

    :try_start_80
    throw v0
    :try_end_81
    .catch Ljava/util/ConcurrentModificationException; {:try_start_80 .. :try_end_81} :catch_81

    .line 951
    :catch_81
    move-exception v0

    .line 955
    .local v0, "cme":Ljava/util/ConcurrentModificationException;
    const-string v2, "MediaFocusControl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FATAL EXCEPTION AudioFocus  abandonAudioFocus() caused "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    invoke-virtual {v0}, Ljava/util/ConcurrentModificationException;->printStackTrace()V

    .line 959
    .end local v0    # "cme":Ljava/util/ConcurrentModificationException;
    :goto_9b
    return v12
.end method

.method addFocusFollower(Landroid/media/audiopolicy/IAudioPolicyCallback;)V
    .registers 8
    .param p1, "ff"    # Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 474
    if-nez p1, :cond_3

    .line 475
    return-void

    .line 477
    :cond_3
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v0

    .line 478
    const/4 v1, 0x0

    .line 479
    .local v1, "found":Z
    :try_start_7
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFollowers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 480
    .local v3, "pcb":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-interface {v3}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {p1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 481
    const/4 v1, 0x1

    .line 482
    goto :goto_2a

    .line 484
    .end local v3    # "pcb":Landroid/media/audiopolicy/IAudioPolicyCallback;
    :cond_29
    goto :goto_d

    .line 485
    :cond_2a
    :goto_2a
    if-eqz v1, :cond_2e

    .line 486
    monitor-exit v0

    return-void

    .line 488
    :cond_2e
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFollowers:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 489
    invoke-virtual {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyCurrentFocusAsync(Landroid/media/audiopolicy/IAudioPolicyCallback;)V

    .line 491
    .end local v1    # "found":Z
    monitor-exit v0

    .line 492
    return-void

    .line 491
    :catchall_38
    move-exception v1

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_7 .. :try_end_3a} :catchall_38

    throw v1
.end method

.method protected discardAudioFocusOwner()V
    .registers 6

    .line 167
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v0

    .line 168
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 170
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/FocusRequester;

    .line 171
    .local v1, "exFocusOwner":Lcom/android/server/audio/FocusRequester;
    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/audio/FocusRequester;->handleFocusLoss(ILcom/android/server/audio/FocusRequester;Z)V

    .line 173
    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->release()V

    .line 175
    .end local v1    # "exFocusOwner":Lcom/android/server/audio/FocusRequester;
    :cond_1c
    monitor-exit v0

    .line 176
    return-void

    .line 175
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method dispatchFocusChange(Landroid/media/AudioFocusInfo;I)I
    .registers 7
    .param p1, "afi"    # Landroid/media/AudioFocusInfo;
    .param p2, "focusChange"    # I

    .line 677
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v0

    .line 678
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 680
    monitor-exit v0

    return v2

    .line 683
    :cond_a
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1a

    .line 684
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusOwnersForFocusPolicy:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/FocusRequester;

    .local v1, "fr":Lcom/android/server/audio/FocusRequester;
    goto :goto_26

    .line 686
    .end local v1    # "fr":Lcom/android/server/audio/FocusRequester;
    :cond_1a
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusOwnersForFocusPolicy:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/FocusRequester;

    .line 688
    .restart local v1    # "fr":Lcom/android/server/audio/FocusRequester;
    :goto_26
    if-nez v1, :cond_2a

    .line 690
    monitor-exit v0

    return v2

    .line 692
    :cond_2a
    invoke-virtual {v1, p2}, Lcom/android/server/audio/FocusRequester;->dispatchFocusChange(I)I

    move-result v2

    monitor-exit v0

    return v2

    .line 693
    .end local v1    # "fr":Lcom/android/server/audio/FocusRequester;
    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_30

    throw v1
.end method

.method public duckPlayers(Lcom/android/server/audio/FocusRequester;Lcom/android/server/audio/FocusRequester;Z)Z
    .registers 5
    .param p1, "winner"    # Lcom/android/server/audio/FocusRequester;
    .param p2, "loser"    # Lcom/android/server/audio/FocusRequester;
    .param p3, "forceDuck"    # Z

    .line 118
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusEnforcer:Lcom/android/server/audio/PlayerFocusEnforcer;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/audio/PlayerFocusEnforcer;->duckPlayers(Lcom/android/server/audio/FocusRequester;Lcom/android/server/audio/FocusRequester;Z)Z

    move-result v0

    return v0
.end method

.method protected dump(Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nMediaFocusControl dump time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-static {}, Ljava/text/DateFormat;->getTimeInstance()Ljava/text/DateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 106
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 108
    invoke-direct {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->dumpFocusStack(Ljava/io/PrintWriter;)V

    .line 109
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 111
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mEventLogger:Lcom/android/server/audio/AudioEventLogger;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioEventLogger;->dump(Ljava/io/PrintWriter;)V

    .line 112
    return-void
.end method

.method protected dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 138
    array-length v0, p2

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_15

    aget-object v2, p2, v1

    .line 139
    .local v2, "arg":Ljava/lang/String;
    const-string v3, "focusStack"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 140
    invoke-direct {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->dumpFocusStack(Ljava/io/PrintWriter;)V

    .line 141
    goto :goto_15

    .line 138
    .end local v2    # "arg":Ljava/lang/String;
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 144
    :cond_15
    :goto_15
    return-void
.end method

.method protected getCurrentAudioFocus()I
    .registers 3

    .line 707
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v0

    .line 708
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 709
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 711
    :cond_e
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->getGainRequest()I

    move-result v1

    monitor-exit v0

    return v1

    .line 713
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method mustNotifyFocusOwnerOnDuck()Z
    .registers 2

    .line 469
    iget-boolean v0, p0, Lcom/android/server/audio/MediaFocusControl;->mNotifyFocusOwnerOnDuck:Z

    return v0
.end method

.method public mutePlayersForCall([I)V
    .registers 3
    .param p1, "usagesToMute"    # [I

    .line 128
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusEnforcer:Lcom/android/server/audio/PlayerFocusEnforcer;

    invoke-interface {v0, p1}, Lcom/android/server/audio/PlayerFocusEnforcer;->mutePlayersForCall([I)V

    .line 129
    return-void
.end method

.method notifyExtFocusPolicyFocusAbandon_syncAf(Landroid/media/AudioFocusInfo;)Z
    .registers 7
    .param p1, "afi"    # Landroid/media/AudioFocusInfo;

    .line 654
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    if-nez v0, :cond_6

    .line 655
    const/4 v0, 0x0

    return v0

    .line 657
    :cond_6
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusOwnersForFocusPolicy:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FocusRequester;

    .line 658
    .local v0, "fr":Lcom/android/server/audio/FocusRequester;
    if-eqz v0, :cond_17

    .line 659
    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->release()V

    .line 663
    :cond_17
    :try_start_17
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    invoke-interface {v1, p1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->notifyAudioFocusAbandon(Landroid/media/AudioFocusInfo;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1c} :catch_1d

    .line 667
    goto :goto_3a

    .line 664
    :catch_1d
    move-exception v1

    .line 665
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "MediaFocusControl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t call notifyAudioFocusAbandon() on IAudioPolicyCallback "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 666
    invoke-interface {v4}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 665
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 668
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_3a
    const/4 v1, 0x1

    return v1
.end method

.method notifyExtFocusPolicyFocusRequest_syncAf(Landroid/media/AudioFocusInfo;Landroid/media/IAudioFocusDispatcher;Landroid/os/IBinder;)Z
    .registers 19
    .param p1, "afi"    # Landroid/media/AudioFocusInfo;
    .param p2, "fd"    # Landroid/media/IAudioFocusDispatcher;
    .param p3, "cb"    # Landroid/os/IBinder;

    move-object v7, p0

    move-object/from16 v8, p1

    .line 600
    move-object/from16 v9, p3

    iget-object v0, v7, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    const/4 v10, 0x0

    if-nez v0, :cond_b

    .line 601
    return v10

    .line 607
    :cond_b
    iget-object v1, v7, Lcom/android/server/audio/MediaFocusControl;->mExtFocusChangeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 608
    :try_start_e
    iget-wide v2, v7, Lcom/android/server/audio/MediaFocusControl;->mExtFocusChangeCounter:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, v7, Lcom/android/server/audio/MediaFocusControl;->mExtFocusChangeCounter:J

    invoke-virtual {v8, v2, v3}, Landroid/media/AudioFocusInfo;->setGen(J)V

    .line 609
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_e .. :try_end_19} :catchall_8b

    .line 610
    iget-object v0, v7, Lcom/android/server/audio/MediaFocusControl;->mFocusOwnersForFocusPolicy:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/android/server/audio/FocusRequester;

    .line 611
    .local v11, "existingFr":Lcom/android/server/audio/FocusRequester;
    if-eqz v11, :cond_4c

    .line 612
    move-object/from16 v12, p2

    invoke-virtual {v11, v12}, Lcom/android/server/audio/FocusRequester;->hasSameDispatcher(Landroid/media/IAudioFocusDispatcher;)Z

    move-result v0

    if-nez v0, :cond_66

    .line 613
    invoke-virtual {v11}, Lcom/android/server/audio/FocusRequester;->release()V

    .line 614
    new-instance v5, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;

    invoke-direct {v5, v7, v9}, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;-><init>(Lcom/android/server/audio/MediaFocusControl;Landroid/os/IBinder;)V

    .line 615
    .local v5, "hdlr":Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;
    iget-object v0, v7, Lcom/android/server/audio/MediaFocusControl;->mFocusOwnersForFocusPolicy:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/android/server/audio/FocusRequester;

    move-object v1, v14

    move-object v2, v8

    move-object v3, v12

    move-object v4, v9

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/audio/FocusRequester;-><init>(Landroid/media/AudioFocusInfo;Landroid/media/IAudioFocusDispatcher;Landroid/os/IBinder;Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;Lcom/android/server/audio/MediaFocusControl;)V

    invoke-virtual {v0, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    .end local v5    # "hdlr":Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;
    goto :goto_66

    .line 620
    :cond_4c
    move-object/from16 v12, p2

    new-instance v5, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;

    invoke-direct {v5, v7, v9}, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;-><init>(Lcom/android/server/audio/MediaFocusControl;Landroid/os/IBinder;)V

    .line 621
    .restart local v5    # "hdlr":Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;
    iget-object v0, v7, Lcom/android/server/audio/MediaFocusControl;->mFocusOwnersForFocusPolicy:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/android/server/audio/FocusRequester;

    move-object v1, v14

    move-object v2, v8

    move-object v3, v12

    move-object v4, v9

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/audio/FocusRequester;-><init>(Landroid/media/AudioFocusInfo;Landroid/media/IAudioFocusDispatcher;Landroid/os/IBinder;Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;Lcom/android/server/audio/MediaFocusControl;)V

    invoke-virtual {v0, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    .end local v5    # "hdlr":Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;
    :cond_66
    :goto_66
    :try_start_66
    iget-object v0, v7, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    const/4 v1, 0x1

    invoke-interface {v0, v8, v1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->notifyAudioFocusRequest(Landroid/media/AudioFocusInfo;I)V
    :try_end_6c
    .catch Landroid/os/RemoteException; {:try_start_66 .. :try_end_6c} :catch_6d

    .line 627
    return v1

    .line 628
    :catch_6d
    move-exception v0

    .line 629
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaFocusControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t call notifyAudioFocusRequest() on IAudioPolicyCallback "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 630
    invoke-interface {v3}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 629
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 632
    .end local v0    # "e":Landroid/os/RemoteException;
    return v10

    .line 609
    .end local v11    # "existingFr":Lcom/android/server/audio/FocusRequester;
    :catchall_8b
    move-exception v0

    move-object/from16 v12, p2

    :goto_8e
    :try_start_8e
    monitor-exit v1
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_90

    throw v0

    :catchall_90
    move-exception v0

    goto :goto_8e
.end method

.method notifyExtPolicyCurrentFocusAsync(Landroid/media/audiopolicy/IAudioPolicyCallback;)V
    .registers 4
    .param p1, "pcb"    # Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 540
    move-object v0, p1

    .line 541
    .local v0, "pcb2":Landroid/media/audiopolicy/IAudioPolicyCallback;
    new-instance v1, Lcom/android/server/audio/MediaFocusControl$1;

    invoke-direct {v1, p0, v0}, Lcom/android/server/audio/MediaFocusControl$1;-><init>(Lcom/android/server/audio/MediaFocusControl;Landroid/media/audiopolicy/IAudioPolicyCallback;)V

    .line 559
    .local v1, "thread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 560
    return-void
.end method

.method notifyExtPolicyFocusGrant_syncAf(Landroid/media/AudioFocusInfo;I)V
    .registers 9
    .param p1, "afi"    # Landroid/media/AudioFocusInfo;
    .param p2, "requestResult"    # I

    .line 566
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFollowers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 569
    .local v1, "pcb":Landroid/media/audiopolicy/IAudioPolicyCallback;
    :try_start_12
    invoke-interface {v1, p1, p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->notifyAudioFocusGrant(Landroid/media/AudioFocusInfo;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_15} :catch_16

    .line 573
    goto :goto_31

    .line 570
    :catch_16
    move-exception v2

    .line 571
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "MediaFocusControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t call notifyAudioFocusGrant() on IAudioPolicyCallback "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    invoke-interface {v1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 571
    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 574
    .end local v1    # "pcb":Landroid/media/audiopolicy/IAudioPolicyCallback;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_31
    goto :goto_6

    .line 575
    :cond_32
    return-void
.end method

.method notifyExtPolicyFocusLoss_syncAf(Landroid/media/AudioFocusInfo;Z)V
    .registers 9
    .param p1, "afi"    # Landroid/media/AudioFocusInfo;
    .param p2, "wasDispatched"    # Z

    .line 581
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFollowers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 584
    .local v1, "pcb":Landroid/media/audiopolicy/IAudioPolicyCallback;
    :try_start_12
    invoke-interface {v1, p1, p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->notifyAudioFocusLoss(Landroid/media/AudioFocusInfo;Z)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_15} :catch_16

    .line 588
    goto :goto_31

    .line 585
    :catch_16
    move-exception v2

    .line 586
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "MediaFocusControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t call notifyAudioFocusLoss() on IAudioPolicyCallback "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    invoke-interface {v1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 586
    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 589
    .end local v1    # "pcb":Landroid/media/audiopolicy/IAudioPolicyCallback;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_31
    goto :goto_6

    .line 590
    :cond_32
    return-void
.end method

.method removeFocusFollower(Landroid/media/audiopolicy/IAudioPolicyCallback;)V
    .registers 7
    .param p1, "ff"    # Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 495
    if-nez p1, :cond_3

    .line 496
    return-void

    .line 498
    :cond_3
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v0

    .line 499
    :try_start_6
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFollowers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 500
    .local v2, "pcb":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-interface {v2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 501
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFollowers:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 502
    goto :goto_2d

    .line 504
    .end local v2    # "pcb":Landroid/media/audiopolicy/IAudioPolicyCallback;
    :cond_2c
    goto :goto_c

    .line 505
    :cond_2d
    :goto_2d
    monitor-exit v0

    .line 506
    return-void

    .line 505
    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_6 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method protected requestAudioFocus(Landroid/media/AudioAttributes;ILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;IIZ)I
    .registers 34
    .param p1, "aa"    # Landroid/media/AudioAttributes;
    .param p2, "focusChangeHint"    # I
    .param p3, "cb"    # Landroid/os/IBinder;
    .param p4, "fd"    # Landroid/media/IAudioFocusDispatcher;
    .param p5, "clientId"    # Ljava/lang/String;
    .param p6, "callingPackageName"    # Ljava/lang/String;
    .param p7, "flags"    # I
    .param p8, "sdk"    # I
    .param p9, "forceDuck"    # Z

    move-object/from16 v13, p0

    move/from16 v14, p2

    move-object/from16 v15, p3

    move-object/from16 v12, p5

    move-object/from16 v11, p6

    .line 764
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mEventLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v1, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestAudioFocus() from uid/pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 765
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 766
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " clientId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " callingPack="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " req="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " flags=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 769
    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " sdk="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, p8

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v2, "MediaFocusControl"

    .line 771
    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioEventLogger$StringEvent;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v1

    .line 764
    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 773
    invoke-interface/range {p3 .. p3}, Landroid/os/IBinder;->pingBinder()Z

    move-result v0

    const/4 v9, 0x0

    if-nez v0, :cond_79

    .line 774
    const-string v0, "MediaFocusControl"

    const-string v1, " AudioFocus DOA client for requestAudioFocus(), aborting."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    return v9

    .line 778
    :cond_79
    iget-object v0, v13, Lcom/android/server/audio/MediaFocusControl;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v1, 0x20

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v1, v2, v11}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_88

    .line 780
    return v9

    .line 783
    :cond_88
    sget-object v16, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v16

    .line 784
    :try_start_8b
    iget-object v0, v13, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0
    :try_end_91
    .catchall {:try_start_8b .. :try_end_91} :catchall_290

    const/16 v8, 0x64

    if-le v0, v8, :cond_a5

    .line 785
    :try_start_95
    const-string v0, "MediaFocusControl"

    const-string v1, "Max AudioFocus stack size reached, failing requestAudioFocus()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    monitor-exit v16
    :try_end_9d
    .catchall {:try_start_95 .. :try_end_9d} :catchall_9e

    return v9

    .line 912
    :catchall_9e
    move-exception v0

    move/from16 v21, p7

    .line 912
    .end local p7    # "flags":I
    .local v21, "flags":I
    :goto_a1
    move/from16 v3, p9

    goto/16 :goto_295

    .line 789
    .end local v21    # "flags":I
    .restart local p7    # "flags":I
    :cond_a5
    :try_start_a5
    iget-boolean v0, v13, Lcom/android/server/audio/MediaFocusControl;->mRingOrCallActive:Z

    const/4 v7, 0x1

    xor-int/2addr v0, v7

    const-string v1, "AudioFocus_For_Phone_Ring_And_Calls"

    .line 790
    invoke-virtual {v1, v12}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1
    :try_end_af
    .catchall {:try_start_a5 .. :try_end_af} :catchall_290

    if-nez v1, :cond_b3

    move v1, v7

    goto :goto_b4

    :cond_b3
    move v1, v9

    :goto_b4
    and-int v17, v0, v1

    .line 791
    .local v17, "enteringRingOrCall":Z
    if-eqz v17, :cond_ba

    :try_start_b8
    iput-boolean v7, v13, Lcom/android/server/audio/MediaFocusControl;->mRingOrCallActive:Z
    :try_end_ba
    .catchall {:try_start_b8 .. :try_end_ba} :catchall_9e

    .line 794
    :cond_ba
    :try_start_ba
    invoke-direct {v13, v11}, Lcom/android/server/audio/MediaFocusControl;->shouldLockForNavigation(Ljava/lang/String;)Z

    move-result v0
    :try_end_be
    .catchall {:try_start_ba .. :try_end_be} :catchall_290

    if-eqz v0, :cond_db

    .line 795
    :try_start_c0
    const-string v0, "MediaFocusControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set NAVI_LOCK for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d7
    .catchall {:try_start_c0 .. :try_end_d7} :catchall_9e

    .line 796
    or-int/lit8 v0, p7, 0x10

    .line 801
    .end local p7    # "flags":I
    .local v0, "flags":I
    move v6, v0

    goto :goto_dd

    .line 801
    .end local v0    # "flags":I
    .restart local p7    # "flags":I
    :cond_db
    move/from16 v6, p7

    .line 801
    .end local p7    # "flags":I
    .local v6, "flags":I
    :goto_dd
    :try_start_dd
    iget-object v0, v13, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;
    :try_end_df
    .catchall {:try_start_dd .. :try_end_df} :catchall_28a

    if-eqz v0, :cond_10f

    .line 803
    :try_start_e1
    new-instance v0, Landroid/media/AudioFocusInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3
    :try_end_e7
    .catchall {:try_start_e1 .. :try_end_e7} :catchall_106

    const/16 v18, 0x0

    move-object v1, v0

    move-object/from16 v2, p1

    move-object v4, v12

    move-object v5, v11

    move/from16 v19, v6

    move v6, v14

    .end local v6    # "flags":I
    .local v19, "flags":I
    move/from16 v7, v18

    move/from16 v18, v8

    move/from16 v8, v19

    move v14, v9

    move v9, v10

    :try_start_f9
    invoke-direct/range {v1 .. v9}, Landroid/media/AudioFocusInfo;-><init>(Landroid/media/AudioAttributes;ILjava/lang/String;Ljava/lang/String;IIII)V
    :try_end_fc
    .catchall {:try_start_f9 .. :try_end_fc} :catchall_fd

    .line 803
    .local v0, "afiForExtPolicy":Landroid/media/AudioFocusInfo;
    goto :goto_115

    .line 912
    .end local v0    # "afiForExtPolicy":Landroid/media/AudioFocusInfo;
    .end local v17    # "enteringRingOrCall":Z
    :catchall_fd
    move-exception v0

    move/from16 v3, p9

    move/from16 v21, v19

    .line 912
    .end local v19    # "flags":I
    .restart local v21    # "flags":I
    :goto_102
    move/from16 v14, p2

    goto/16 :goto_295

    .line 912
    .end local v21    # "flags":I
    .restart local v6    # "flags":I
    :catchall_106
    move-exception v0

    move/from16 v19, v6

    move/from16 v3, p9

    move/from16 v21, v19

    .line 912
    .end local v6    # "flags":I
    .restart local v19    # "flags":I
    goto/16 :goto_295

    .line 807
    .end local v19    # "flags":I
    .restart local v6    # "flags":I
    .restart local v17    # "enteringRingOrCall":Z
    :cond_10f
    move/from16 v19, v6

    move/from16 v18, v8

    move v14, v9

    .line 807
    .end local v6    # "flags":I
    .restart local v19    # "flags":I
    const/4 v0, 0x0

    .line 807
    .restart local v0    # "afiForExtPolicy":Landroid/media/AudioFocusInfo;
    :goto_115
    move-object v9, v0

    .line 811
    .end local v0    # "afiForExtPolicy":Landroid/media/AudioFocusInfo;
    .local v9, "afiForExtPolicy":Landroid/media/AudioFocusInfo;
    const/4 v0, 0x0

    .line 812
    .local v0, "focusGrantDelayed":Z
    :try_start_117
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/MediaFocusControl;->canReassignAudioFocus()Z

    move-result v1
    :try_end_11b
    .catchall {:try_start_117 .. :try_end_11b} :catchall_282

    if-nez v1, :cond_12f

    .line 813
    move/from16 v8, v19

    and-int/lit8 v1, v8, 0x1

    .line 813
    .end local v19    # "flags":I
    .local v8, "flags":I
    if-nez v1, :cond_12b

    .line 814
    :try_start_123
    monitor-exit v16

    return v14

    .line 912
    .end local v0    # "focusGrantDelayed":Z
    .end local v9    # "afiForExtPolicy":Landroid/media/AudioFocusInfo;
    .end local v17    # "enteringRingOrCall":Z
    :catchall_125
    move-exception v0

    move/from16 v3, p9

    move/from16 v21, v8

    goto :goto_102

    .line 819
    .restart local v0    # "focusGrantDelayed":Z
    .restart local v9    # "afiForExtPolicy":Landroid/media/AudioFocusInfo;
    .restart local v17    # "enteringRingOrCall":Z
    :cond_12b
    const/4 v0, 0x1

    .line 824
    move/from16 v19, v0

    goto :goto_133

    .line 824
    .end local v8    # "flags":I
    .restart local v19    # "flags":I
    :cond_12f
    move/from16 v8, v19

    move/from16 v19, v0

    .line 824
    .end local v0    # "focusGrantDelayed":Z
    .restart local v8    # "flags":I
    .local v19, "focusGrantDelayed":Z
    :goto_133
    const/4 v0, 0x0

    .line 825
    .local v0, "focusGrantDelayedForVoiceAssist":Z
    if-nez v19, :cond_16f

    iget-object v1, v13, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 826
    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_16f

    .line 827
    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.miui.voiceassist"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16f

    iget-object v1, v13, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 828
    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/FocusRequester;

    invoke-direct {v13, v1}, Lcom/android/server/audio/MediaFocusControl;->isNaviFocusOwner(Lcom/android/server/audio/FocusRequester;)Z

    move-result v1

    if-eqz v1, :cond_16f

    .line 829
    const-string v1, "MediaFocusControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delay focus grant for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16e
    .catchall {:try_start_123 .. :try_end_16e} :catchall_125

    .line 830
    const/4 v0, 0x1

    .line 835
    .end local v0    # "focusGrantDelayedForVoiceAssist":Z
    .local v22, "focusGrantDelayedForVoiceAssist":Z
    :cond_16f
    move/from16 v22, v0

    move-object/from16 v7, p4

    :try_start_173
    invoke-virtual {v13, v9, v7, v15}, Lcom/android/server/audio/MediaFocusControl;->notifyExtFocusPolicyFocusRequest_syncAf(Landroid/media/AudioFocusInfo;Landroid/media/IAudioFocusDispatcher;Landroid/os/IBinder;)Z

    move-result v0
    :try_end_177
    .catchall {:try_start_173 .. :try_end_177} :catchall_27a

    if-eqz v0, :cond_17b

    .line 838
    :try_start_179
    monitor-exit v16
    :try_end_17a
    .catchall {:try_start_179 .. :try_end_17a} :catchall_125

    return v18

    .line 844
    :cond_17b
    :try_start_17b
    new-instance v0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;

    invoke-direct {v0, v13, v15}, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;-><init>(Lcom/android/server/audio/MediaFocusControl;Landroid/os/IBinder;)V
    :try_end_180
    .catchall {:try_start_17b .. :try_end_180} :catchall_27a

    move-object v6, v0

    .line 847
    .local v6, "afdh":Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;
    :try_start_181
    invoke-interface {v15, v6, v14}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_184
    .catch Landroid/os/RemoteException; {:try_start_181 .. :try_end_184} :catch_250
    .catchall {:try_start_181 .. :try_end_184} :catchall_27a

    .line 852
    nop

    .line 854
    :try_start_185
    iget-object v0, v13, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0
    :try_end_18b
    .catchall {:try_start_185 .. :try_end_18b} :catchall_27a

    if-nez v0, :cond_1d6

    :try_start_18d
    iget-object v0, v13, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v0, v12}, Lcom/android/server/audio/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d6

    .line 857
    iget-object v0, v13, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FocusRequester;

    .line 858
    .local v0, "fr":Lcom/android/server/audio/FocusRequester;
    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->getGainRequest()I

    move-result v1
    :try_end_1a7
    .catchall {:try_start_18d .. :try_end_1a7} :catchall_1cd

    move v2, v14

    move/from16 v14, p2

    if-ne v1, v14, :cond_1c1

    :try_start_1ac
    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->getGrantFlags()I

    move-result v1

    if-ne v1, v8, :cond_1c1

    .line 861
    invoke-interface {v15, v6, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 862
    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    move-result-object v1

    const/4 v5, 0x1

    invoke-virtual {v13, v1, v5}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyFocusGrant_syncAf(Landroid/media/AudioFocusInfo;I)V

    .line 864
    monitor-exit v16

    return v5

    .line 912
    .end local v0    # "fr":Lcom/android/server/audio/FocusRequester;
    .end local v6    # "afdh":Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;
    .end local v9    # "afiForExtPolicy":Landroid/media/AudioFocusInfo;
    .end local v17    # "enteringRingOrCall":Z
    .end local v19    # "focusGrantDelayed":Z
    .end local v22    # "focusGrantDelayedForVoiceAssist":Z
    :catchall_1bf
    move-exception v0

    goto :goto_1d0

    .line 868
    .restart local v0    # "fr":Lcom/android/server/audio/FocusRequester;
    .restart local v6    # "afdh":Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;
    .restart local v9    # "afiForExtPolicy":Landroid/media/AudioFocusInfo;
    .restart local v17    # "enteringRingOrCall":Z
    .restart local v19    # "focusGrantDelayed":Z
    .restart local v22    # "focusGrantDelayedForVoiceAssist":Z
    :cond_1c1
    const/4 v5, 0x1

    if-nez v19, :cond_1da

    .line 869
    iget-object v1, v13, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 871
    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->release()V
    :try_end_1cc
    .catchall {:try_start_1ac .. :try_end_1cc} :catchall_1bf

    .line 871
    .end local v0    # "fr":Lcom/android/server/audio/FocusRequester;
    goto :goto_1da

    .line 912
    .end local v6    # "afdh":Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;
    .end local v9    # "afiForExtPolicy":Landroid/media/AudioFocusInfo;
    .end local v17    # "enteringRingOrCall":Z
    .end local v19    # "focusGrantDelayed":Z
    .end local v22    # "focusGrantDelayedForVoiceAssist":Z
    :catchall_1cd
    move-exception v0

    move/from16 v14, p2

    .line 912
    .end local v8    # "flags":I
    .restart local v21    # "flags":I
    :goto_1d0
    move/from16 v3, p9

    move/from16 v21, v8

    goto/16 :goto_295

    .line 876
    .end local v21    # "flags":I
    .restart local v6    # "afdh":Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;
    .restart local v8    # "flags":I
    .restart local v9    # "afiForExtPolicy":Landroid/media/AudioFocusInfo;
    .restart local v17    # "enteringRingOrCall":Z
    .restart local v19    # "focusGrantDelayed":Z
    .restart local v22    # "focusGrantDelayedForVoiceAssist":Z
    :cond_1d6
    move v2, v14

    const/4 v5, 0x1

    move/from16 v14, p2

    :cond_1da
    :goto_1da
    :try_start_1da
    invoke-direct {v13, v12, v2, v2}, Lcom/android/server/audio/MediaFocusControl;->removeFocusStackEntry(Ljava/lang/String;ZZ)V

    .line 878
    new-instance v0, Lcom/android/server/audio/FocusRequester;

    .line 879
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v18
    :try_end_1e3
    .catchall {:try_start_1da .. :try_end_1e3} :catchall_24a

    move-object v1, v0

    move-object/from16 v2, p1

    move v3, v14

    move v4, v8

    move-object v5, v7

    move-object/from16 v20, v6

    move-object v6, v15

    .line 879
    .end local v6    # "afdh":Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;
    .local v20, "afdh":Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;
    move-object v7, v12

    move/from16 v21, v8

    move-object/from16 v8, v20

    .line 879
    .end local v8    # "flags":I
    .restart local v21    # "flags":I
    move-object/from16 v23, v9

    move-object v9, v11

    .line 879
    .end local v9    # "afiForExtPolicy":Landroid/media/AudioFocusInfo;
    .local v23, "afiForExtPolicy":Landroid/media/AudioFocusInfo;
    move/from16 v10, v18

    move-object v11, v13

    move/from16 v12, p8

    :try_start_1f9
    invoke-direct/range {v1 .. v12}, Lcom/android/server/audio/FocusRequester;-><init>(Landroid/media/AudioAttributes;IILandroid/media/IAudioFocusDispatcher;Landroid/os/IBinder;Ljava/lang/String;Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;Ljava/lang/String;ILcom/android/server/audio/MediaFocusControl;I)V

    .line 880
    .local v0, "nfr":Lcom/android/server/audio/FocusRequester;
    if-eqz v19, :cond_20d

    .line 883
    invoke-direct {v13, v0}, Lcom/android/server/audio/MediaFocusControl;->pushBelowLockedFocusOwners(Lcom/android/server/audio/FocusRequester;)I

    move-result v1

    .line 884
    .local v1, "requestResult":I
    if-eqz v1, :cond_20b

    .line 885
    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    move-result-object v2

    invoke-virtual {v13, v2, v1}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyFocusGrant_syncAf(Landroid/media/AudioFocusInfo;I)V

    .line 887
    :cond_20b
    monitor-exit v16

    return v1

    .line 889
    .end local v1    # "requestResult":I
    :cond_20d
    if-eqz v22, :cond_21e

    .line 890
    invoke-direct {v13, v0}, Lcom/android/server/audio/MediaFocusControl;->pushBelowNaviFocusOwners(Lcom/android/server/audio/FocusRequester;)I

    move-result v1

    .line 891
    .restart local v1    # "requestResult":I
    if-eqz v1, :cond_21c

    .line 892
    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    move-result-object v2

    invoke-virtual {v13, v2, v1}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyFocusGrant_syncAf(Landroid/media/AudioFocusInfo;I)V

    .line 894
    :cond_21c
    monitor-exit v16

    return v1

    .line 898
    .end local v1    # "requestResult":I
    :cond_21e
    iget-object v1, v13, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1
    :try_end_224
    .catchall {:try_start_1f9 .. :try_end_224} :catchall_247

    if-nez v1, :cond_22c

    .line 899
    move/from16 v3, p9

    :try_start_228
    invoke-direct {v13, v14, v0, v3}, Lcom/android/server/audio/MediaFocusControl;->propagateFocusLossFromGain_syncAf(ILcom/android/server/audio/FocusRequester;Z)V

    goto :goto_22e

    .line 903
    :cond_22c
    move/from16 v3, p9

    :goto_22e
    iget-object v1, v13, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 904
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/audio/FocusRequester;->handleFocusGainFromRequest(I)V

    .line 906
    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    move-result-object v2

    invoke-virtual {v13, v2, v1}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyFocusGrant_syncAf(Landroid/media/AudioFocusInfo;I)V

    .line 909
    and-int v2, v1, v17

    if-eqz v2, :cond_245

    .line 910
    invoke-direct {v13, v1}, Lcom/android/server/audio/MediaFocusControl;->runAudioCheckerForRingOrCallAsync(Z)V

    .line 912
    .end local v0    # "nfr":Lcom/android/server/audio/FocusRequester;
    .end local v17    # "enteringRingOrCall":Z
    .end local v19    # "focusGrantDelayed":Z
    .end local v20    # "afdh":Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;
    .end local v22    # "focusGrantDelayedForVoiceAssist":Z
    .end local v23    # "afiForExtPolicy":Landroid/media/AudioFocusInfo;
    :cond_245
    monitor-exit v16

    .line 914
    return v1

    .line 912
    :catchall_247
    move-exception v0

    goto/16 :goto_a1

    .line 912
    .end local v21    # "flags":I
    .restart local v8    # "flags":I
    :catchall_24a
    move-exception v0

    move/from16 v3, p9

    move/from16 v21, v8

    goto :goto_281

    .line 848
    .restart local v6    # "afdh":Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;
    .restart local v9    # "afiForExtPolicy":Landroid/media/AudioFocusInfo;
    .restart local v17    # "enteringRingOrCall":Z
    .restart local v19    # "focusGrantDelayed":Z
    .restart local v22    # "focusGrantDelayedForVoiceAssist":Z
    :catch_250
    move-exception v0

    move/from16 v3, p9

    move-object/from16 v20, v6

    move/from16 v21, v8

    move-object/from16 v23, v9

    move v2, v14

    move/from16 v14, p2

    .line 848
    .end local v6    # "afdh":Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;
    .end local v8    # "flags":I
    .end local v9    # "afiForExtPolicy":Landroid/media/AudioFocusInfo;
    .restart local v20    # "afdh":Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;
    .restart local v21    # "flags":I
    .restart local v23    # "afiForExtPolicy":Landroid/media/AudioFocusInfo;
    move-object v1, v0

    .line 850
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaFocusControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AudioFocus  requestAudioFocus() could not link to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " binder death"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    monitor-exit v16

    return v2

    .line 912
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v17    # "enteringRingOrCall":Z
    .end local v19    # "focusGrantDelayed":Z
    .end local v20    # "afdh":Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;
    .end local v21    # "flags":I
    .end local v22    # "focusGrantDelayedForVoiceAssist":Z
    .end local v23    # "afiForExtPolicy":Landroid/media/AudioFocusInfo;
    .restart local v8    # "flags":I
    :catchall_27a
    move-exception v0

    move/from16 v3, p9

    move/from16 v21, v8

    move/from16 v14, p2

    .line 912
    .end local v8    # "flags":I
    .restart local v21    # "flags":I
    :goto_281
    goto :goto_295

    .line 912
    .end local v21    # "flags":I
    .local v19, "flags":I
    :catchall_282
    move-exception v0

    move/from16 v3, p9

    move/from16 v21, v19

    move/from16 v14, p2

    .line 912
    .end local v19    # "flags":I
    .restart local v21    # "flags":I
    goto :goto_295

    .line 912
    .end local v21    # "flags":I
    .local v6, "flags":I
    :catchall_28a
    move-exception v0

    move/from16 v3, p9

    move/from16 v21, v6

    .line 912
    .end local v6    # "flags":I
    .restart local v21    # "flags":I
    goto :goto_295

    .line 912
    .end local v21    # "flags":I
    .restart local p7    # "flags":I
    :catchall_290
    move-exception v0

    move/from16 v3, p9

    move/from16 v21, p7

    .line 912
    .end local p7    # "flags":I
    .restart local v21    # "flags":I
    :goto_295
    monitor-exit v16
    :try_end_296
    .catchall {:try_start_228 .. :try_end_296} :catchall_297

    throw v0

    :catchall_297
    move-exception v0

    goto :goto_295
.end method

.method protected setDuckingInExtPolicyAvailable(Z)V
    .registers 3
    .param p1, "available"    # Z

    .line 466
    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Lcom/android/server/audio/MediaFocusControl;->mNotifyFocusOwnerOnDuck:Z

    .line 467
    return-void
.end method

.method setFocusPolicy(Landroid/media/audiopolicy/IAudioPolicyCallback;)V
    .registers 4
    .param p1, "policy"    # Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 517
    if-nez p1, :cond_3

    .line 518
    return-void

    .line 520
    :cond_3
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v0

    .line 521
    :try_start_6
    iput-object p1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 522
    monitor-exit v0

    .line 523
    return-void

    .line 522
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_a

    throw v1
.end method

.method setFocusRequestResultFromExtPolicy(Landroid/media/AudioFocusInfo;I)V
    .registers 8
    .param p1, "afi"    # Landroid/media/AudioFocusInfo;
    .param p2, "requestResult"    # I

    .line 636
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mExtFocusChangeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 637
    :try_start_3
    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getGen()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/audio/MediaFocusControl;->mExtFocusChangeCounter:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_f

    .line 638
    monitor-exit v0

    return-void

    .line 640
    :cond_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_22

    .line 641
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusOwnersForFocusPolicy:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FocusRequester;

    .line 642
    .local v0, "fr":Lcom/android/server/audio/FocusRequester;
    if-eqz v0, :cond_21

    .line 643
    invoke-virtual {v0, p2}, Lcom/android/server/audio/FocusRequester;->dispatchFocusResultFromExtPolicy(I)V

    .line 645
    :cond_21
    return-void

    .line 640
    .end local v0    # "fr":Lcom/android/server/audio/FocusRequester;
    :catchall_22
    move-exception v1

    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public unduckPlayers(Lcom/android/server/audio/FocusRequester;)V
    .registers 3
    .param p1, "winner"    # Lcom/android/server/audio/FocusRequester;

    .line 123
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusEnforcer:Lcom/android/server/audio/PlayerFocusEnforcer;

    invoke-interface {v0, p1}, Lcom/android/server/audio/PlayerFocusEnforcer;->unduckPlayers(Lcom/android/server/audio/FocusRequester;)V

    .line 124
    return-void
.end method

.method public unmutePlayersForCall()V
    .registers 2

    .line 133
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusEnforcer:Lcom/android/server/audio/PlayerFocusEnforcer;

    invoke-interface {v0}, Lcom/android/server/audio/PlayerFocusEnforcer;->unmutePlayersForCall()V

    .line 134
    return-void
.end method

.method protected unregisterAudioFocusClient(Ljava/lang/String;)V
    .registers 5
    .param p1, "clientId"    # Ljava/lang/String;

    .line 964
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v0

    .line 965
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_5
    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/audio/MediaFocusControl;->removeFocusStackEntry(Ljava/lang/String;ZZ)V

    .line 966
    monitor-exit v0

    .line 967
    return-void

    .line 966
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_a

    throw v1
.end method

.method unsetFocusPolicy(Landroid/media/audiopolicy/IAudioPolicyCallback;)V
    .registers 4
    .param p1, "policy"    # Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 526
    if-nez p1, :cond_3

    .line 527
    return-void

    .line 529
    :cond_3
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v0

    .line 530
    :try_start_6
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    if-ne v1, p1, :cond_d

    .line 531
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 533
    :cond_d
    monitor-exit v0

    .line 534
    return-void

    .line 533
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_f

    throw v1
.end method
