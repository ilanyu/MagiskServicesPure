.class final Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;
.super Landroid/os/Handler;
.source "TvInputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/TvInputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WatchLogHandler"
.end annotation


# static fields
.field static final MSG_LOG_WATCH_END:I = 0x2

.field static final MSG_LOG_WATCH_START:I = 0x1

.field static final MSG_SWITCH_CONTENT_RESOLVER:I = 0x3


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;Landroid/os/Looper;)V
    .registers 3
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 2742
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2743
    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;->mContentResolver:Landroid/content/ContentResolver;

    .line 2744
    return-void
.end method

.method private encodeTuneParams(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 8
    .param p1, "tuneParams"    # Landroid/os/Bundle;

    .line 2800
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2801
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 2802
    .local v1, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2803
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_43

    .line 2804
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2805
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 2806
    .local v4, "value":Ljava/lang/Object;
    if-nez v4, :cond_20

    .line 2807
    goto :goto_d

    .line 2809
    :cond_20
    invoke-direct {p0, v3}, Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;->replaceEscapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2810
    const-string v5, "="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2811
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;->replaceEscapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2812
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_42

    .line 2813
    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2815
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/Object;
    :cond_42
    goto :goto_d

    .line 2816
    :cond_43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private replaceEscapeCharacters(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "src"    # Ljava/lang/String;

    .line 2820
    const/16 v0, 0x25

    .line 2821
    .local v0, "ESCAPE_CHARACTER":C
    const-string v1, "%=,"

    .line 2822
    .local v1, "ENCODING_TARGET_CHARACTERS":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2823
    .local v2, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_f
    if-ge v5, v4, :cond_26

    aget-char v6, v3, v5

    .line 2824
    .local v6, "ch":C
    const-string v7, "%=,"

    invoke-virtual {v7, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ltz v7, :cond_20

    .line 2825
    const/16 v7, 0x25

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2827
    :cond_20
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2823
    .end local v6    # "ch":C
    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    .line 2829
    :cond_26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 13
    .param p1, "msg"    # Landroid/os/Message;

    .line 2748
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_be

    .line 2793
    const-string v0, "TvInputManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unhandled message code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_bb

    .line 2789
    :pswitch_20
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/ContentResolver;

    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;->mContentResolver:Landroid/content/ContentResolver;

    .line 2790
    goto/16 :goto_bb

    .line 2774
    :pswitch_28
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 2775
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Landroid/os/IBinder;

    .line 2776
    .local v1, "sessionToken":Landroid/os/IBinder;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 2778
    .local v2, "watchEndTime":J
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 2779
    .local v4, "values":Landroid/content/ContentValues;
    const-string/jumbo v5, "watch_end_time_utc_millis"

    .line 2780
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 2779
    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2781
    const-string/jumbo v5, "session_token"

    .line 2782
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2781
    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2784
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v6, Landroid/media/tv/TvContract$WatchedPrograms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 2785
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 2786
    goto :goto_bb

    .line 2750
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "sessionToken":Landroid/os/IBinder;
    .end local v2    # "watchEndTime":J
    .end local v4    # "values":Landroid/content/ContentValues;
    :pswitch_5c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 2751
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 2752
    .local v1, "packageName":Ljava/lang/String;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 2753
    .local v2, "watchStartTime":J
    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 2754
    .local v4, "channelId":J
    iget-object v6, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v6, Landroid/os/Bundle;

    .line 2755
    .local v6, "tuneParams":Landroid/os/Bundle;
    iget-object v7, v0, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    check-cast v7, Landroid/os/IBinder;

    .line 2757
    .local v7, "sessionToken":Landroid/os/IBinder;
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 2758
    .local v8, "values":Landroid/content/ContentValues;
    const-string/jumbo v9, "package_name"

    invoke-virtual {v8, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2759
    const-string/jumbo v9, "watch_start_time_utc_millis"

    .line 2760
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 2759
    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2761
    const-string v9, "channel_id"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2762
    if-eqz v6, :cond_a6

    .line 2763
    const-string/jumbo v9, "tune_params"

    .line 2764
    invoke-direct {p0, v6}, Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;->encodeTuneParams(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v10

    .line 2763
    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2766
    :cond_a6
    const-string/jumbo v9, "session_token"

    .line 2767
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2766
    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2769
    iget-object v9, p0, Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v10, Landroid/media/tv/TvContract$WatchedPrograms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v9, v10, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 2770
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 2771
    nop

    .line 2797
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "watchStartTime":J
    .end local v4    # "channelId":J
    .end local v6    # "tuneParams":Landroid/os/Bundle;
    .end local v7    # "sessionToken":Landroid/os/IBinder;
    .end local v8    # "values":Landroid/content/ContentValues;
    :goto_bb
    return-void

    nop

    nop

    :pswitch_data_be
    .packed-switch 0x1
        :pswitch_5c
        :pswitch_28
        :pswitch_20
    .end packed-switch
.end method
