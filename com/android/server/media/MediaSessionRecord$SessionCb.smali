.class Lcom/android/server/media/MediaSessionRecord$SessionCb;
.super Ljava/lang/Object;
.source "MediaSessionRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaSessionRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SessionCb"
.end annotation


# instance fields
.field private final mCb:Landroid/media/session/ISessionCallback;

.field final synthetic this$0:Lcom/android/server/media/MediaSessionRecord;


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaSessionRecord;Landroid/media/session/ISessionCallback;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/media/MediaSessionRecord;
    .param p2, "cb"    # Landroid/media/session/ISessionCallback;

    .line 909
    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 910
    iput-object p2, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    .line 911
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/media/MediaSessionRecord$SessionCb;)Landroid/media/session/ISessionCallback;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord$SessionCb;

    .line 906
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    return-object v0
.end method

.method private createMediaButtonIntent(Landroid/view/KeyEvent;)Landroid/content/Intent;
    .registers 4
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .line 1140
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1141
    .local v0, "mediaButtonIntent":Landroid/content/Intent;
    const-string v1, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1142
    return-object v0
.end method


# virtual methods
.method public adjustVolume(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;ZI)V
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "caller"    # Landroid/media/session/ISessionControllerCallback;
    .param p5, "asSystemService"    # Z
    .param p6, "direction"    # I

    .line 1119
    if-eqz p5, :cond_1c

    .line 1120
    :try_start_2
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->access$2600(Lcom/android/server/media/MediaSessionRecord;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    const/16 v3, 0x3e8

    const/4 v4, 0x0

    move v5, p6

    invoke-interface/range {v0 .. v5}, Landroid/media/session/ISessionCallback;->onAdjustVolume(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;I)V

    goto :goto_26

    .line 1125
    :catch_1a
    move-exception v0

    goto :goto_27

    .line 1123
    :cond_1c
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p6

    invoke-interface/range {v1 .. v6}, Landroid/media/session/ISessionCallback;->onAdjustVolume(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;I)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_26} :catch_1a

    .line 1127
    :goto_26
    goto :goto_2f

    .line 1125
    :goto_27
    nop

    .line 1126
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaSessionRecord"

    const-string v2, "Remote failure in adjustVolume."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1128
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2f
    return-void
.end method

.method public fastForward(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "caller"    # Landroid/media/session/ISessionControllerCallback;

    .line 1083
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/media/session/ISessionCallback;->onFastForward(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1086
    goto :goto_e

    .line 1084
    :catch_6
    move-exception v0

    .line 1085
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaSessionRecord"

    const-string v2, "Remote failure in fastForward."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1087
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public next(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "caller"    # Landroid/media/session/ISessionControllerCallback;

    .line 1065
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/media/session/ISessionCallback;->onNext(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1068
    goto :goto_e

    .line 1066
    :catch_6
    move-exception v0

    .line 1067
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaSessionRecord"

    const-string v2, "Remote failure in next."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1069
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public pause(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "caller"    # Landroid/media/session/ISessionControllerCallback;

    .line 1049
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/media/session/ISessionCallback;->onPause(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1052
    goto :goto_e

    .line 1050
    :catch_6
    move-exception v0

    .line 1051
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaSessionRecord"

    const-string v2, "Remote failure in pause."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1053
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public play(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "caller"    # Landroid/media/session/ISessionControllerCallback;

    .line 1005
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/media/session/ISessionCallback;->onPlay(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1008
    goto :goto_e

    .line 1006
    :catch_6
    move-exception v0

    .line 1007
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaSessionRecord"

    const-string v2, "Remote failure in play."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1009
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public playFromMediaId(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "caller"    # Landroid/media/session/ISessionControllerCallback;
    .param p5, "mediaId"    # Ljava/lang/String;
    .param p6, "extras"    # Landroid/os/Bundle;

    .line 1014
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/media/session/ISessionCallback;->onPlayFromMediaId(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 1017
    goto :goto_14

    .line 1015
    :catch_c
    move-exception v0

    .line 1016
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaSessionRecord"

    const-string v2, "Remote failure in playFromMediaId."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1018
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_14
    return-void
.end method

.method public playFromSearch(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "caller"    # Landroid/media/session/ISessionControllerCallback;
    .param p5, "query"    # Ljava/lang/String;
    .param p6, "extras"    # Landroid/os/Bundle;

    .line 1023
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/media/session/ISessionCallback;->onPlayFromSearch(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 1026
    goto :goto_14

    .line 1024
    :catch_c
    move-exception v0

    .line 1025
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaSessionRecord"

    const-string v2, "Remote failure in playFromSearch."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1027
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_14
    return-void
.end method

.method public playFromUri(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "caller"    # Landroid/media/session/ISessionControllerCallback;
    .param p5, "uri"    # Landroid/net/Uri;
    .param p6, "extras"    # Landroid/os/Bundle;

    .line 1032
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/media/session/ISessionCallback;->onPlayFromUri(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;Landroid/net/Uri;Landroid/os/Bundle;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 1035
    goto :goto_14

    .line 1033
    :catch_c
    move-exception v0

    .line 1034
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaSessionRecord"

    const-string v2, "Remote failure in playFromUri."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1036
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_14
    return-void
.end method

.method public prepare(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "caller"    # Landroid/media/session/ISessionControllerCallback;

    .line 970
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/media/session/ISessionCallback;->onPrepare(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 973
    goto :goto_e

    .line 971
    :catch_6
    move-exception v0

    .line 972
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaSessionRecord"

    const-string v2, "Remote failure in prepare."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 974
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public prepareFromMediaId(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "caller"    # Landroid/media/session/ISessionControllerCallback;
    .param p5, "mediaId"    # Ljava/lang/String;
    .param p6, "extras"    # Landroid/os/Bundle;

    .line 979
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/media/session/ISessionCallback;->onPrepareFromMediaId(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 982
    goto :goto_14

    .line 980
    :catch_c
    move-exception v0

    .line 981
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaSessionRecord"

    const-string v2, "Remote failure in prepareFromMediaId."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 983
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_14
    return-void
.end method

.method public prepareFromSearch(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "caller"    # Landroid/media/session/ISessionControllerCallback;
    .param p5, "query"    # Ljava/lang/String;
    .param p6, "extras"    # Landroid/os/Bundle;

    .line 988
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/media/session/ISessionCallback;->onPrepareFromSearch(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 991
    goto :goto_14

    .line 989
    :catch_c
    move-exception v0

    .line 990
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaSessionRecord"

    const-string v2, "Remote failure in prepareFromSearch."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 992
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_14
    return-void
.end method

.method public prepareFromUri(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "caller"    # Landroid/media/session/ISessionControllerCallback;
    .param p5, "uri"    # Landroid/net/Uri;
    .param p6, "extras"    # Landroid/os/Bundle;

    .line 997
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/media/session/ISessionCallback;->onPrepareFromUri(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;Landroid/net/Uri;Landroid/os/Bundle;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 1000
    goto :goto_14

    .line 998
    :catch_c
    move-exception v0

    .line 999
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaSessionRecord"

    const-string v2, "Remote failure in prepareFromUri."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1001
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_14
    return-void
.end method

.method public previous(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "caller"    # Landroid/media/session/ISessionControllerCallback;

    .line 1074
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/media/session/ISessionCallback;->onPrevious(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1077
    goto :goto_e

    .line 1075
    :catch_6
    move-exception v0

    .line 1076
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaSessionRecord"

    const-string v2, "Remote failure in previous."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1078
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public rate(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;Landroid/media/Rating;)V
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "caller"    # Landroid/media/session/ISessionControllerCallback;
    .param p5, "rating"    # Landroid/media/Rating;

    .line 1110
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/media/session/ISessionCallback;->onRate(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;Landroid/media/Rating;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    .line 1113
    goto :goto_13

    .line 1111
    :catch_b
    move-exception v0

    .line 1112
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaSessionRecord"

    const-string v2, "Remote failure in rate."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1114
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_13
    return-void
.end method

.method public rewind(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "caller"    # Landroid/media/session/ISessionControllerCallback;

    .line 1092
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/media/session/ISessionCallback;->onRewind(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1095
    goto :goto_e

    .line 1093
    :catch_6
    move-exception v0

    .line 1094
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaSessionRecord"

    const-string v2, "Remote failure in rewind."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1096
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public seekTo(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;J)V
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "caller"    # Landroid/media/session/ISessionControllerCallback;
    .param p5, "pos"    # J

    .line 1101
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-wide v5, p5

    invoke-interface/range {v0 .. v6}, Landroid/media/session/ISessionCallback;->onSeekTo(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;J)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    .line 1104
    goto :goto_13

    .line 1102
    :catch_b
    move-exception v0

    .line 1103
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaSessionRecord"

    const-string v2, "Remote failure in seekTo."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1105
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_13
    return-void
.end method

.method public sendCommand(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .registers 16
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "caller"    # Landroid/media/session/ISessionControllerCallback;
    .param p5, "command"    # Ljava/lang/String;
    .param p6, "args"    # Landroid/os/Bundle;
    .param p7, "cb"    # Landroid/os/ResultReceiver;

    .line 951
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-interface/range {v0 .. v7}, Landroid/media/session/ISessionCallback;->onCommand(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    .line 954
    goto :goto_15

    .line 952
    :catch_d
    move-exception v0

    .line 953
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaSessionRecord"

    const-string v2, "Remote failure in sendCommand."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 955
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_15
    return-void
.end method

.method public sendCustomAction(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "caller"    # Landroid/media/session/ISessionControllerCallback;
    .param p5, "action"    # Ljava/lang/String;
    .param p6, "args"    # Landroid/os/Bundle;

    .line 961
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/media/session/ISessionCallback;->onCustomAction(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 964
    goto :goto_14

    .line 962
    :catch_c
    move-exception v0

    .line 963
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaSessionRecord"

    const-string v2, "Remote failure in sendCustomAction."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 965
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_14
    return-void
.end method

.method public sendMediaButton(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;ZLandroid/view/KeyEvent;)Z
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "caller"    # Landroid/media/session/ISessionControllerCallback;
    .param p5, "asSystemService"    # Z
    .param p6, "keyEvent"    # Landroid/view/KeyEvent;

    .line 934
    if-eqz p5, :cond_20

    .line 935
    :try_start_2
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->access$2600(Lcom/android/server/media/MediaSessionRecord;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    const/16 v3, 0x3e8

    .line 936
    invoke-direct {p0, p6}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->createMediaButtonIntent(Landroid/view/KeyEvent;)Landroid/content/Intent;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 935
    invoke-interface/range {v0 .. v6}, Landroid/media/session/ISessionCallback;->onMediaButton(Ljava/lang/String;IILandroid/content/Intent;ILandroid/os/ResultReceiver;)V

    goto :goto_2d

    .line 942
    :catch_1e
    move-exception v0

    goto :goto_2f

    .line 938
    :cond_20
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    .line 939
    invoke-direct {p0, p6}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->createMediaButtonIntent(Landroid/view/KeyEvent;)Landroid/content/Intent;

    move-result-object v6

    .line 938
    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-interface/range {v1 .. v6}, Landroid/media/session/ISessionCallback;->onMediaButtonFromController(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;Landroid/content/Intent;)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2d} :catch_1e

    .line 941
    :goto_2d
    const/4 v0, 0x1

    return v0

    .line 942
    :goto_2f
    nop

    .line 943
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaSessionRecord"

    const-string v2, "Remote failure in sendMediaRequest."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 945
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public sendMediaButton(Ljava/lang/String;IIZLandroid/view/KeyEvent;ILandroid/os/ResultReceiver;)Z
    .registers 16
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "asSystemService"    # Z
    .param p5, "keyEvent"    # Landroid/view/KeyEvent;
    .param p6, "sequenceId"    # I
    .param p7, "cb"    # Landroid/os/ResultReceiver;

    .line 916
    if-eqz p4, :cond_20

    .line 917
    :try_start_2
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->access$2600(Lcom/android/server/media/MediaSessionRecord;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    const/16 v3, 0x3e8

    .line 918
    invoke-direct {p0, p5}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->createMediaButtonIntent(Landroid/view/KeyEvent;)Landroid/content/Intent;

    move-result-object v4

    .line 917
    move v5, p6

    move-object v6, p7

    invoke-interface/range {v0 .. v6}, Landroid/media/session/ISessionCallback;->onMediaButton(Ljava/lang/String;IILandroid/content/Intent;ILandroid/os/ResultReceiver;)V

    goto :goto_2e

    .line 924
    :catch_1e
    move-exception v0

    goto :goto_30

    .line 920
    :cond_20
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    .line 921
    invoke-direct {p0, p5}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->createMediaButtonIntent(Landroid/view/KeyEvent;)Landroid/content/Intent;

    move-result-object v5

    .line 920
    move-object v2, p1

    move v3, p2

    move v4, p3

    move v6, p6

    move-object v7, p7

    invoke-interface/range {v1 .. v7}, Landroid/media/session/ISessionCallback;->onMediaButton(Ljava/lang/String;IILandroid/content/Intent;ILandroid/os/ResultReceiver;)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2e} :catch_1e

    .line 923
    :goto_2e
    const/4 v0, 0x1

    return v0

    .line 924
    :goto_30
    nop

    .line 925
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaSessionRecord"

    const-string v2, "Remote failure in sendMediaRequest."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 927
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public setVolumeTo(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;I)V
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "caller"    # Landroid/media/session/ISessionControllerCallback;
    .param p5, "value"    # I

    .line 1133
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/media/session/ISessionCallback;->onSetVolumeTo(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    .line 1136
    goto :goto_13

    .line 1134
    :catch_b
    move-exception v0

    .line 1135
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaSessionRecord"

    const-string v2, "Remote failure in setVolumeTo."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1137
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_13
    return-void
.end method

.method public skipToTrack(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;J)V
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "caller"    # Landroid/media/session/ISessionControllerCallback;
    .param p5, "id"    # J

    .line 1041
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-wide v5, p5

    invoke-interface/range {v0 .. v6}, Landroid/media/session/ISessionCallback;->onSkipToTrack(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;J)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    .line 1044
    goto :goto_13

    .line 1042
    :catch_b
    move-exception v0

    .line 1043
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaSessionRecord"

    const-string v2, "Remote failure in skipToTrack"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1045
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_13
    return-void
.end method

.method public stop(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "caller"    # Landroid/media/session/ISessionControllerCallback;

    .line 1057
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/media/session/ISessionCallback;->onStop(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1060
    goto :goto_e

    .line 1058
    :catch_6
    move-exception v0

    .line 1059
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaSessionRecord"

    const-string v2, "Remote failure in stop."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1061
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method
