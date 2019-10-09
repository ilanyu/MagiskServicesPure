.class final Lcom/android/server/display/OverlayDisplayAdapter;
.super Lcom/android/server/display/DisplayAdapter;
.source "OverlayDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;,
        Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;,
        Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field private static final DISPLAY_PATTERN:Ljava/util/regex/Pattern;

.field private static final MAX_HEIGHT:I = 0x1000

.field private static final MAX_WIDTH:I = 0x1000

.field private static final MIN_HEIGHT:I = 0x64

.field private static final MIN_WIDTH:I = 0x64

.field private static final MODE_PATTERN:Ljava/util/regex/Pattern;

.field static final TAG:Ljava/lang/String; = "OverlayDisplayAdapter"

.field private static final UNIQUE_ID_PREFIX:Ljava/lang/String; = "overlay:"


# instance fields
.field private mCurrentOverlaySetting:Ljava/lang/String;

.field private final mOverlays:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;",
            ">;"
        }
    .end annotation
.end field

.field private final mUiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 78
    const-string v0, "([^,]+)(,[a-z]+)*"

    .line 79
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/OverlayDisplayAdapter;->DISPLAY_PATTERN:Ljava/util/regex/Pattern;

    .line 80
    const-string v0, "(\\d+)x(\\d+)/(\\d+)"

    .line 81
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/OverlayDisplayAdapter;->MODE_PATTERN:Ljava/util/regex/Pattern;

    .line 80
    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Landroid/os/Handler;)V
    .registers 12
    .param p1, "syncRoot"    # Lcom/android/server/display/DisplayManagerService$SyncRoot;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "listener"    # Lcom/android/server/display/DisplayAdapter$Listener;
    .param p5, "uiHandler"    # Landroid/os/Handler;

    .line 94
    const-string v5, "OverlayDisplayAdapter"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/DisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Ljava/lang/String;)V

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter;->mOverlays:Ljava/util/ArrayList;

    .line 89
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter;->mCurrentOverlaySetting:Ljava/lang/String;

    .line 95
    iput-object p5, p0, Lcom/android/server/display/OverlayDisplayAdapter;->mUiHandler:Landroid/os/Handler;

    .line 96
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/OverlayDisplayAdapter;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/OverlayDisplayAdapter;

    .line 69
    invoke-direct {p0}, Lcom/android/server/display/OverlayDisplayAdapter;->updateOverlayDisplayDevices()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/display/OverlayDisplayAdapter;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/OverlayDisplayAdapter;

    .line 69
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter;->mUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private static chooseOverlayGravity(I)I
    .registers 2
    .param p0, "overlayNumber"    # I

    .line 209
    packed-switch p0, :pswitch_data_10

    .line 218
    const/16 v0, 0x53

    return v0

    .line 215
    :pswitch_6
    const/16 v0, 0x35

    return v0

    .line 213
    :pswitch_9
    const/16 v0, 0x55

    return v0

    .line 211
    :pswitch_c
    const/16 v0, 0x33

    return v0

    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method private updateOverlayDisplayDevices()V
    .registers 3

    .line 131
    invoke-virtual {p0}, Lcom/android/server/display/OverlayDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 132
    :try_start_5
    invoke-direct {p0}, Lcom/android/server/display/OverlayDisplayAdapter;->updateOverlayDisplayDevicesLocked()V

    .line 133
    monitor-exit v0

    .line 134
    return-void

    .line 133
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_a

    throw v1
.end method

.method private updateOverlayDisplayDevicesLocked()V
    .registers 27

    .line 137
    move-object/from16 v8, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/OverlayDisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "overlay_display_devices"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_15

    .line 140
    const-string v0, ""

    .line 143
    .end local v0    # "value":Ljava/lang/String;
    .local v9, "value":Ljava/lang/String;
    :cond_15
    move-object v9, v0

    iget-object v0, v8, Lcom/android/server/display/OverlayDisplayAdapter;->mCurrentOverlaySetting:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 144
    return-void

    .line 146
    :cond_1f
    iput-object v9, v8, Lcom/android/server/display/OverlayDisplayAdapter;->mCurrentOverlaySetting:Ljava/lang/String;

    .line 148
    iget-object v0, v8, Lcom/android/server/display/OverlayDisplayAdapter;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4b

    .line 149
    const-string v0, "OverlayDisplayAdapter"

    const-string v1, "Dismissing all overlay display devices."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v0, v8, Lcom/android/server/display/OverlayDisplayAdapter;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_36
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    .line 151
    .local v1, "overlay":Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;
    invoke-virtual {v1}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->dismissLocked()V

    .line 152
    .end local v1    # "overlay":Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;
    goto :goto_36

    .line 153
    :cond_46
    iget-object v0, v8, Lcom/android/server/display/OverlayDisplayAdapter;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 156
    :cond_4b
    const/4 v0, 0x0

    .line 157
    .local v0, "count":I
    const-string v1, ";"

    invoke-virtual {v9, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    array-length v11, v10

    move v1, v0

    const/4 v13, 0x0

    .line 157
    .end local v0    # "count":I
    .local v1, "count":I
    :goto_55
    if-ge v13, v11, :cond_1d4

    aget-object v14, v10, v13

    .line 158
    .local v14, "part":Ljava/lang/String;
    sget-object v0, Lcom/android/server/display/OverlayDisplayAdapter;->DISPLAY_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v14}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v15

    .line 159
    .local v15, "displayMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1b6

    .line 160
    const/4 v0, 0x4

    if-lt v1, v0, :cond_80

    .line 161
    const-string v0, "OverlayDisplayAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Too many overlay display devices specified: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    goto/16 :goto_1d4

    .line 164
    :cond_80
    const/4 v2, 0x1

    invoke-virtual {v15, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    .line 165
    .local v7, "modeString":Ljava/lang/String;
    const/4 v3, 0x2

    invoke-virtual {v15, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 166
    .local v5, "flagString":Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v0

    .line 167
    .local v4, "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;>;"
    const-string v0, "\\|"

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v12, v6

    const/4 v3, 0x0

    :goto_98
    if-ge v3, v12, :cond_131

    aget-object v2, v6, v3

    .line 168
    .local v2, "mode":Ljava/lang/String;
    sget-object v0, Lcom/android/server/display/OverlayDisplayAdapter;->MODE_PATTERN:Ljava/util/regex/Pattern;

    move-object/from16 v19, v6

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 169
    .local v6, "modeMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_119

    .line 171
    move-object/from16 v20, v7

    const/4 v7, 0x1

    :try_start_ad
    invoke-virtual {v6, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 171
    .end local v7    # "modeString":Ljava/lang/String;
    .local v20, "modeString":Ljava/lang/String;
    const/16 v7, 0xa

    invoke-static {v0, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_b7
    .catch Ljava/lang/NumberFormatException; {:try_start_ad .. :try_end_b7} :catch_113

    .line 172
    .local v0, "width":I
    move-object/from16 v21, v10

    const/4 v7, 0x2

    :try_start_ba
    invoke-virtual {v6, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    const/16 v7, 0xa

    invoke-static {v10, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v10

    .line 173
    .local v10, "height":I
    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7
    :try_end_c9
    .catch Ljava/lang/NumberFormatException; {:try_start_ba .. :try_end_c9} :catch_10f

    move-object/from16 v22, v6

    const/16 v6, 0xa

    :try_start_cd
    invoke-static {v7, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    .line 174
    .local v6, "densityDpi":I
    .local v22, "modeMatcher":Ljava/util/regex/Matcher;
    const/16 v7, 0x64

    if-lt v0, v7, :cond_f2

    const/16 v7, 0x1000

    if-gt v0, v7, :cond_f2

    const/16 v7, 0x64

    if-lt v10, v7, :cond_f2

    const/16 v7, 0x1000

    if-gt v10, v7, :cond_f2

    const/16 v7, 0x78

    if-lt v6, v7, :cond_f2

    const/16 v7, 0x280

    if-gt v6, v7, :cond_f2

    .line 178
    new-instance v7, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;

    invoke-direct {v7, v0, v10, v6}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;-><init>(III)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    goto :goto_126

    .line 181
    :cond_f2
    const-string v7, "OverlayDisplayAdapter"

    move/from16 v23, v0

    new-instance v0, Ljava/lang/StringBuilder;

    .line 181
    .end local v0    # "width":I
    .local v23, "width":I
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v24, v6

    const-string v6, "Ignoring out-of-range overlay display mode: "

    .line 181
    .end local v6    # "densityDpi":I
    .local v24, "densityDpi":I
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10c
    .catch Ljava/lang/NumberFormatException; {:try_start_cd .. :try_end_10c} :catch_10d

    .line 181
    .end local v10    # "height":I
    .end local v23    # "width":I
    .end local v24    # "densityDpi":I
    goto :goto_118

    .line 183
    :catch_10d
    move-exception v0

    goto :goto_118

    .line 183
    .end local v22    # "modeMatcher":Ljava/util/regex/Matcher;
    .local v6, "modeMatcher":Ljava/util/regex/Matcher;
    :catch_10f
    move-exception v0

    move-object/from16 v22, v6

    goto :goto_118

    :catch_113
    move-exception v0

    move-object/from16 v22, v6

    move-object/from16 v21, v10

    .line 184
    .end local v2    # "mode":Ljava/lang/String;
    .end local v6    # "modeMatcher":Ljava/util/regex/Matcher;
    :goto_118
    goto :goto_126

    .line 185
    .end local v20    # "modeString":Ljava/lang/String;
    .restart local v2    # "mode":Ljava/lang/String;
    .restart local v6    # "modeMatcher":Ljava/util/regex/Matcher;
    .restart local v7    # "modeString":Ljava/lang/String;
    :cond_119
    move-object/from16 v22, v6

    move-object/from16 v20, v7

    move-object/from16 v21, v10

    .line 185
    .end local v6    # "modeMatcher":Ljava/util/regex/Matcher;
    .end local v7    # "modeString":Ljava/lang/String;
    .restart local v20    # "modeString":Ljava/lang/String;
    .restart local v22    # "modeMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_126

    .line 186
    nop

    .line 167
    .end local v2    # "mode":Ljava/lang/String;
    .end local v22    # "modeMatcher":Ljava/util/regex/Matcher;
    :cond_126
    :goto_126
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    move-object/from16 v10, v21

    const/4 v2, 0x1

    goto/16 :goto_98

    .line 189
    .end local v20    # "modeString":Ljava/lang/String;
    .restart local v7    # "modeString":Ljava/lang/String;
    :cond_131
    move-object/from16 v20, v7

    move-object/from16 v21, v10

    .line 189
    .end local v7    # "modeString":Ljava/lang/String;
    .restart local v20    # "modeString":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1b8

    .line 190
    add-int/lit8 v0, v1, 0x1

    .line 190
    .end local v1    # "count":I
    .local v0, "count":I
    move v10, v0

    .line 191
    .local v10, "number":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/OverlayDisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10401df

    const/4 v3, 0x1

    new-array v6, v3, [Ljava/lang/Object;

    .line 193
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v12, 0x0

    aput-object v7, v6, v12

    .line 191
    invoke-virtual {v1, v2, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 194
    .local v7, "name":Ljava/lang/String;
    invoke-static {v10}, Lcom/android/server/display/OverlayDisplayAdapter;->chooseOverlayGravity(I)I

    move-result v16

    .line 195
    .local v16, "gravity":I
    if-eqz v5, :cond_167

    const-string v1, ",secure"

    invoke-virtual {v5, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_167

    move v6, v3

    goto :goto_168

    :cond_167
    move v6, v12

    .line 197
    .local v6, "secure":Z
    :goto_168
    const-string v1, "OverlayDisplayAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Showing overlay display device #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", modes="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    invoke-virtual {v4}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 197
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v3, v8, Lcom/android/server/display/OverlayDisplayAdapter;->mOverlays:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    move-object v1, v2

    move-object v12, v2

    move-object v2, v8

    move/from16 v25, v0

    move-object v0, v3

    move-object v3, v7

    .line 200
    .end local v0    # "count":I
    .local v25, "count":I
    move-object/from16 v17, v4

    .line 200
    .end local v4    # "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;>;"
    .local v17, "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;>;"
    move-object/from16 v18, v5

    move/from16 v5, v16

    .line 200
    .end local v5    # "flagString":Ljava/lang/String;
    .local v18, "flagString":Ljava/lang/String;
    move-object/from16 v19, v20

    move-object/from16 v20, v7

    move v7, v10

    .line 200
    .end local v7    # "name":Ljava/lang/String;
    .local v19, "modeString":Ljava/lang/String;
    .local v20, "name":Ljava/lang/String;
    invoke-direct/range {v1 .. v7}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;-><init>(Lcom/android/server/display/OverlayDisplayAdapter;Ljava/lang/String;Ljava/util/List;IZI)V

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    nop

    .line 157
    move/from16 v1, v25

    goto :goto_1ce

    .line 204
    .end local v6    # "secure":Z
    .end local v10    # "number":I
    .end local v16    # "gravity":I
    .end local v17    # "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;>;"
    .end local v18    # "flagString":Ljava/lang/String;
    .end local v19    # "modeString":Ljava/lang/String;
    .end local v20    # "name":Ljava/lang/String;
    .end local v25    # "count":I
    .restart local v1    # "count":I
    :cond_1b6
    move-object/from16 v21, v10

    :cond_1b8
    const-string v0, "OverlayDisplayAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Malformed overlay display devices setting: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    .end local v14    # "part":Ljava/lang/String;
    .end local v15    # "displayMatcher":Ljava/util/regex/Matcher;
    :goto_1ce
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v10, v21

    goto/16 :goto_55

    .line 206
    :cond_1d4
    :goto_1d4
    return-void
.end method


# virtual methods
.method public dumpLocked(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 100
    invoke-super {p0, p1}, Lcom/android/server/display/DisplayAdapter;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCurrentOverlaySetting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayAdapter;->mCurrentOverlaySetting:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mOverlays: size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayAdapter;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    .line 105
    .local v1, "overlay":Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;
    invoke-virtual {v1, p1}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 106
    .end local v1    # "overlay":Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;
    goto :goto_3b

    .line 107
    :cond_4b
    return-void
.end method

.method public registerLocked()V
    .registers 3

    .line 111
    invoke-super {p0}, Lcom/android/server/display/DisplayAdapter;->registerLocked()V

    .line 113
    invoke-virtual {p0}, Lcom/android/server/display/OverlayDisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/OverlayDisplayAdapter$1;

    invoke-direct {v1, p0}, Lcom/android/server/display/OverlayDisplayAdapter$1;-><init>(Lcom/android/server/display/OverlayDisplayAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 128
    return-void
.end method
