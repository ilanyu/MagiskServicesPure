.class public Lcom/android/server/gamepad/BsGamePadWorker;
.super Ljava/lang/Object;
.source "BsGamePadWorker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/gamepad/BsGamePadWorker$Pos;
    }
.end annotation


# static fields
.field private static final BSGAMEPAD_MOUSE_SUPPORT_SETTING:Ljava/lang/String; = "bsgamepad_mouse_support"

.field private static final DEBUG:Z = false

.field private static DEBUG_FOR_CHOOSE_MOVE:Z = false

.field private static final DEBUG_FOR_DELAY_MOVE:Z = false

.field private static final DEBUG_FOR_MULTIKEY_CONFLICT:Z = false

.field private static final DEBUG_FOR_SPLIT_MOTIONEVENT:Z = false

.field public static final DIRECTIONPAD_COUNT:I = 0x3

.field public static final DIRECTION_PAD_HAT:I = 0xc

.field public static final DIRECTION_PAD_L:I = 0xa

.field public static final DIRECTION_PAD_R:I = 0xb

.field public static final GAMEBUTTON_BUTTON_A:I = 0x2

.field public static final GAMEBUTTON_BUTTON_B:I = 0x3

.field public static final GAMEBUTTON_BUTTON_L1:I = 0x6

.field public static final GAMEBUTTON_BUTTON_L2:I = 0x8

.field public static final GAMEBUTTON_BUTTON_R1:I = 0x7

.field public static final GAMEBUTTON_BUTTON_R2:I = 0x9

.field public static final GAMEBUTTON_BUTTON_X:I = 0x4

.field public static final GAMEBUTTON_BUTTON_Y:I = 0x5

.field public static final GAMEBUTTON_COUNT:I = 0xa

.field public static final GAMEBUTTON_MASK:I = 0x3ff

.field public static final GAMEBUTTON_SELECT:I = 0x1

.field public static final GAMEBUTTON_START:I = 0x0

.field public static final GAMEPAD_CONTROL_COUNT:I = 0xd

.field public static final INVALID_POINTER_ID:I = -0x1

.field public static final MAX_POINTER_COUNT:I = 0x10

.field public static final MAX_POINTER_ID_COUNT:I = 0x20

.field public static final MOUSE_BUTTON_LEFT:I = 0x1

.field public static final MOUSE_BUTTON_MIDDLE:I = 0x80

.field public static final MOUSE_BUTTON_RIGHT:I = 0x8

.field public static final MOUSE_TRACKER:I = 0xd

.field private static final MOVE_TIMEOUT:I = 0x2d

.field private static final MOVE_UP_TIMEOUT:I = 0x3c

.field private static final TAG:Ljava/lang/String; = "BsGamePadWorker"

.field public static final TP_ACTION_BUTTON:I = 0x0

.field private static final TYPE_ENABLE_SEND_MOVE:I = 0x2

.field private static final TYPE_MOUSE_MOVE_UP:I = 0x3

.field private static final TYPE_SEND_MOVE:I = 0x1

.field private static final TYPE_SEND_MOVE_UP:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEnableSendMoveBitMap:J

.field private mGameButtonStatesBitMap:J

.field private final mGamePadMapper:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Landroid/gamepad/BsGameKeyMap;",
            ">;"
        }
    .end annotation
.end field

.field private mGamePadRotation:I

.field private mHandler:Landroid/os/Handler;

.field private mJoystickLastPos:[Lcom/android/server/gamepad/BsGamePadWorker$Pos;

.field private mJoystickLastX:F

.field private mJoystickLastY:F

.field private mMainDirectionPad:I

.field private mMousePointerVisibility:Z

.field private mMouseSupport:Z

.field private mMouseTrackerLastX:F

.field private mMouseTrackerLastY:F

.field private mTouchList:[Lcom/android/server/gamepad/BsGamePadWorker$Pos;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 50
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/gamepad/BsGamePadWorker;->DEBUG_FOR_CHOOSE_MOVE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mGameButtonStatesBitMap:J

    .line 93
    iput-wide v0, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mEnableSendMoveBitMap:J

    .line 102
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mGamePadMapper:Landroid/util/ArrayMap;

    .line 106
    new-instance v0, Lcom/android/server/gamepad/BsGamePadWorker$1;

    invoke-direct {v0, p0}, Lcom/android/server/gamepad/BsGamePadWorker$1;-><init>(Lcom/android/server/gamepad/BsGamePadWorker;)V

    iput-object v0, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mHandler:Landroid/os/Handler;

    .line 252
    iput-object p1, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mContext:Landroid/content/Context;

    .line 253
    const/16 v0, 0x10

    new-array v1, v0, [Lcom/android/server/gamepad/BsGamePadWorker$Pos;

    iput-object v1, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mTouchList:[Lcom/android/server/gamepad/BsGamePadWorker$Pos;

    .line 254
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_21
    if-ge v2, v0, :cond_2f

    .line 255
    iget-object v3, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mTouchList:[Lcom/android/server/gamepad/BsGamePadWorker$Pos;

    new-instance v4, Lcom/android/server/gamepad/BsGamePadWorker$Pos;

    invoke-direct {v4, p0}, Lcom/android/server/gamepad/BsGamePadWorker$Pos;-><init>(Lcom/android/server/gamepad/BsGamePadWorker;)V

    aput-object v4, v3, v2

    .line 254
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 257
    .end local v2    # "i":I
    :cond_2f
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/server/gamepad/BsGamePadWorker$Pos;

    iput-object v0, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mJoystickLastPos:[Lcom/android/server/gamepad/BsGamePadWorker$Pos;

    .line 258
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mMainDirectionPad:I

    .line 259
    iput v1, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mGamePadRotation:I

    .line 260
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mMousePointerVisibility:Z

    .line 261
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "bsgamepad_mouse_support"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_4a

    goto :goto_4b

    :cond_4a
    move v0, v1

    :goto_4b
    iput-boolean v0, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mMouseSupport:Z

    .line 262
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/gamepad/BsGamePadWorker;Lcom/android/server/gamepad/BsGamePadWorker$Pos;)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/gamepad/BsGamePadWorker;
    .param p1, "x1"    # Lcom/android/server/gamepad/BsGamePadWorker$Pos;

    .line 44
    invoke-direct {p0, p1}, Lcom/android/server/gamepad/BsGamePadWorker;->insertTouch(Lcom/android/server/gamepad/BsGamePadWorker$Pos;)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/gamepad/BsGamePadWorker;II)Landroid/view/MotionEvent;
    .registers 4
    .param p0, "x0"    # Lcom/android/server/gamepad/BsGamePadWorker;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/server/gamepad/BsGamePadWorker;->buildMotionEvent(II)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/gamepad/BsGamePadWorker;Landroid/view/MotionEvent;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/gamepad/BsGamePadWorker;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .line 44
    invoke-direct {p0, p1}, Lcom/android/server/gamepad/BsGamePadWorker;->fire(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$374(Lcom/android/server/gamepad/BsGamePadWorker;J)J
    .registers 5
    .param p0, "x0"    # Lcom/android/server/gamepad/BsGamePadWorker;
    .param p1, "x1"    # J

    .line 44
    iget-wide v0, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mGameButtonStatesBitMap:J

    and-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mGameButtonStatesBitMap:J

    return-wide v0
.end method

.method static synthetic access$400()Z
    .registers 1

    .line 44
    sget-boolean v0, Lcom/android/server/gamepad/BsGamePadWorker;->DEBUG_FOR_CHOOSE_MOVE:Z

    return v0
.end method

.method static synthetic access$574(Lcom/android/server/gamepad/BsGamePadWorker;J)J
    .registers 5
    .param p0, "x0"    # Lcom/android/server/gamepad/BsGamePadWorker;
    .param p1, "x1"    # J

    .line 44
    iget-wide v0, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mEnableSendMoveBitMap:J

    and-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mEnableSendMoveBitMap:J

    return-wide v0
.end method

.method static synthetic access$578(Lcom/android/server/gamepad/BsGamePadWorker;J)J
    .registers 5
    .param p0, "x0"    # Lcom/android/server/gamepad/BsGamePadWorker;
    .param p1, "x1"    # J

    .line 44
    iget-wide v0, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mEnableSendMoveBitMap:J

    or-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mEnableSendMoveBitMap:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/android/server/gamepad/BsGamePadWorker;)[Lcom/android/server/gamepad/BsGamePadWorker$Pos;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/gamepad/BsGamePadWorker;

    .line 44
    iget-object v0, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mJoystickLastPos:[Lcom/android/server/gamepad/BsGamePadWorker$Pos;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/gamepad/BsGamePadWorker;)Landroid/util/ArrayMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/gamepad/BsGamePadWorker;

    .line 44
    iget-object v0, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mGamePadMapper:Landroid/util/ArrayMap;

    return-object v0
.end method

.method private adjustTouchId(I)V
    .registers 4
    .param p1, "gap"    # I

    .line 334
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v1, 0x10

    if-ge v0, v1, :cond_1e

    .line 335
    iget-object v1, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mTouchList:[Lcom/android/server/gamepad/BsGamePadWorker$Pos;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/server/gamepad/BsGamePadWorker$Pos;->getFromTouch()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 336
    iget-object v1, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mTouchList:[Lcom/android/server/gamepad/BsGamePadWorker$Pos;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/server/gamepad/BsGamePadWorker$Pos;->getTouchId()I

    move-result v1

    add-int/2addr v1, p1

    invoke-direct {p0, v0, v1}, Lcom/android/server/gamepad/BsGamePadWorker;->updateTouchId(II)V

    .line 334
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 339
    .end local v0    # "i":I
    :cond_1e
    return-void
.end method

.method private buildMotionEvent(II)Landroid/view/MotionEvent;
    .registers 26
    .param p1, "actionIndex"    # I
    .param p2, "action"    # I

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 965
    move/from16 v2, p2

    const/4 v3, 0x0

    .line 966
    .local v3, "nCount":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 968
    .local v4, "pointerCoordsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/MotionEvent$PointerCoords;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 971
    .local v5, "pointerPropsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/MotionEvent$PointerProperties;>;"
    const/4 v6, 0x0

    move v15, v3

    move v3, v6

    .line 971
    .local v3, "i":I
    .local v15, "nCount":I
    :goto_14
    const/16 v7, 0x10

    const/4 v8, 0x1

    if-ge v3, v7, :cond_57

    .line 972
    iget-object v7, v0, Lcom/android/server/gamepad/BsGamePadWorker;->mTouchList:[Lcom/android/server/gamepad/BsGamePadWorker$Pos;

    aget-object v7, v7, v3

    invoke-virtual {v7}, Lcom/android/server/gamepad/BsGamePadWorker$Pos;->isValid()Z

    move-result v7

    if-nez v7, :cond_24

    .line 973
    goto :goto_54

    .line 976
    :cond_24
    new-instance v7, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v7}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    .line 977
    .local v7, "pointerProps":Landroid/view/MotionEvent$PointerProperties;
    iput v3, v7, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 978
    iput v8, v7, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    .line 979
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 981
    new-instance v8, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v8}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 982
    .local v8, "pointerCoords":Landroid/view/MotionEvent$PointerCoords;
    iget-object v9, v0, Lcom/android/server/gamepad/BsGamePadWorker;->mTouchList:[Lcom/android/server/gamepad/BsGamePadWorker$Pos;

    aget-object v9, v9, v3

    invoke-virtual {v9}, Lcom/android/server/gamepad/BsGamePadWorker$Pos;->getX()F

    move-result v9

    iput v9, v8, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 983
    iget-object v9, v0, Lcom/android/server/gamepad/BsGamePadWorker;->mTouchList:[Lcom/android/server/gamepad/BsGamePadWorker$Pos;

    aget-object v9, v9, v3

    invoke-virtual {v9}, Lcom/android/server/gamepad/BsGamePadWorker$Pos;->getY()F

    move-result v9

    iput v9, v8, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 984
    const/high16 v9, 0x3f800000    # 1.0f

    iput v9, v8, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 985
    iput v9, v8, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 986
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 987
    add-int/lit8 v15, v15, 0x1

    .line 971
    .end local v7    # "pointerProps":Landroid/view/MotionEvent$PointerProperties;
    .end local v8    # "pointerCoords":Landroid/view/MotionEvent$PointerCoords;
    :goto_54
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 990
    .end local v3    # "i":I
    :cond_57
    if-eq v2, v8, :cond_5f

    const/4 v3, 0x6

    if-eq v2, v3, :cond_5f

    const/4 v3, 0x3

    if-ne v2, v3, :cond_62

    .line 993
    :cond_5f
    invoke-direct/range {p0 .. p1}, Lcom/android/server/gamepad/BsGamePadWorker;->removeTouch(I)Z

    .line 996
    :cond_62
    if-nez v15, :cond_d0

    .line 997
    const-string v3, "BsGamePadWorker"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "buildMotionEvent "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    const-string v3, "BsGamePadWorker"

    const-string/jumbo v8, "something is wrong in BsGamePadService"

    invoke-static {v3, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    const-string v3, "BsGamePadWorker"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mGameButtonStatesBitMap = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v0, Lcom/android/server/gamepad/BsGamePadWorker;->mGameButtonStatesBitMap:J

    long-to-int v9, v9

    invoke-static {v9}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    nop

    .line 1000
    .local v6, "i":I
    :goto_a1
    move v3, v6

    .line 1000
    .end local v6    # "i":I
    .restart local v3    # "i":I
    if-ge v3, v7, :cond_ce

    .line 1001
    const-string v6, "BsGamePadWorker"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mTouchList["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "] = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/android/server/gamepad/BsGamePadWorker;->mTouchList:[Lcom/android/server/gamepad/BsGamePadWorker$Pos;

    aget-object v9, v9, v3

    invoke-virtual {v9}, Lcom/android/server/gamepad/BsGamePadWorker$Pos;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    add-int/lit8 v6, v3, 0x1

    .line 1000
    .end local v3    # "i":I
    .restart local v6    # "i":I
    goto :goto_a1

    .line 1004
    .end local v6    # "i":I
    :cond_ce
    const/4 v3, 0x0

    return-object v3

    .line 1007
    :cond_d0
    if-le v15, v8, :cond_e0

    .line 1008
    const/4 v3, 0x2

    if-eq v2, v3, :cond_e0

    .line 1009
    packed-switch v2, :pswitch_data_11c

    goto :goto_dd

    .line 1014
    :pswitch_d9
    const/4 v2, 0x6

    .line 1014
    .end local p2    # "action":I
    .local v2, "action":I
    goto :goto_dd

    .line 1011
    .end local v2    # "action":I
    .restart local p2    # "action":I
    :pswitch_db
    const/4 v2, 0x5

    .line 1012
    .end local p2    # "action":I
    .restart local v2    # "action":I
    nop

    .line 1018
    :goto_dd
    shl-int/lit8 v3, v1, 0x8

    or-int/2addr v2, v3

    .line 1022
    :cond_e0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 1023
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 1026
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroid/view/MotionEvent$PointerProperties;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    check-cast v13, [Landroid/view/MotionEvent$PointerProperties;

    .line 1027
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroid/view/MotionEvent$PointerCoords;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    move-object v14, v3

    check-cast v14, [Landroid/view/MotionEvent$PointerCoords;

    const/4 v3, 0x0

    const/16 v16, 0x0

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v18, 0x3f800000    # 1.0f

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1002

    const/16 v22, 0x0

    .line 1022
    move v11, v2

    move v12, v15

    move v6, v15

    move v15, v3

    .line 1022
    .end local v15    # "nCount":I
    .local v6, "nCount":I
    invoke-static/range {v7 .. v22}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v3

    .line 1037
    .local v3, "motionEvent":Landroid/view/MotionEvent;
    return-object v3

    nop

    nop

    :pswitch_data_11c
    .packed-switch 0x0
        :pswitch_db
        :pswitch_d9
    .end packed-switch
.end method

.method private fire(Landroid/view/MotionEvent;)V
    .registers 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1041
    if-nez p1, :cond_3

    .line 1042
    return-void

    .line 1049
    :cond_3
    const/4 v0, 0x0

    .line 1050
    .local v0, "mode":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    .line 1051
    .local v1, "action":I
    if-eqz v1, :cond_f

    const/4 v2, 0x5

    if-ne v1, v2, :cond_10

    .line 1053
    :cond_f
    const/4 v0, 0x2

    .line 1056
    :cond_10
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result v2

    if-nez v2, :cond_34

    .line 1057
    const-string v2, "BsGamePadWorker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fire FAILED ! event = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    :cond_34
    return-void
.end method

.method protected static getCenteredAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;II)F
    .registers 9
    .param p0, "event"    # Landroid/view/MotionEvent;
    .param p1, "device"    # Landroid/view/InputDevice;
    .param p2, "axis"    # I
    .param p3, "historyPos"    # I

    .line 152
    const/4 v0, 0x0

    if-eqz p1, :cond_29

    if-nez p0, :cond_6

    goto :goto_29

    .line 156
    :cond_6
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    invoke-virtual {p1, p2, v1}, Landroid/view/InputDevice;->getMotionRange(II)Landroid/view/InputDevice$MotionRange;

    move-result-object v1

    .line 161
    .local v1, "range":Landroid/view/InputDevice$MotionRange;
    if-eqz v1, :cond_28

    .line 162
    invoke-virtual {v1}, Landroid/view/InputDevice$MotionRange;->getFlat()F

    move-result v2

    .line 163
    .local v2, "flat":F
    if-gez p3, :cond_1b

    invoke-virtual {p0, p2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v3

    goto :goto_1f

    :cond_1b
    invoke-virtual {p0, p2, p3}, Landroid/view/MotionEvent;->getHistoricalAxisValue(II)F

    move-result v3

    .line 167
    .local v3, "value":F
    :goto_1f
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, v2

    if-lez v4, :cond_28

    .line 168
    return v3

    .line 171
    .end local v2    # "flat":F
    .end local v3    # "value":F
    :cond_28
    return v0

    .line 153
    .end local v1    # "range":Landroid/view/InputDevice$MotionRange;
    :cond_29
    :goto_29
    return v0
.end method

.method private getPosFromMotionEvent(Landroid/view/MotionEvent;II)Lcom/android/server/gamepad/BsGamePadWorker$Pos;
    .registers 10
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "historyPos"    # I
    .param p3, "index"    # I

    .line 720
    const/16 v0, 0xc

    const/16 v1, 0xa

    if-ge p3, v1, :cond_a

    if-le p3, v0, :cond_a

    .line 721
    const/4 v0, 0x0

    return-object v0

    .line 727
    :cond_a
    const/4 v1, 0x0

    .line 728
    .local v1, "axis_X":I
    const/4 v2, 0x1

    .line 729
    .local v2, "axis_Y":I
    const/16 v3, 0xb

    if-ne p3, v3, :cond_15

    .line 730
    const/16 v1, 0xb

    .line 731
    const/16 v2, 0xe

    goto :goto_1b

    .line 732
    :cond_15
    if-ne p3, v0, :cond_1b

    .line 733
    const/16 v1, 0xf

    .line 734
    const/16 v2, 0x10

    .line 737
    :cond_1b
    :goto_1b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    invoke-static {p1, v0, v1, p2}, Lcom/android/server/gamepad/BsGamePadWorker;->getCenteredAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;II)F

    move-result v0

    .line 738
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v3

    invoke-static {p1, v3, v2, p2}, Lcom/android/server/gamepad/BsGamePadWorker;->getCenteredAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;II)F

    move-result v3

    .line 739
    .local v3, "y":F
    iget v4, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mGamePadRotation:I

    const/16 v5, 0x10e

    if-ne v4, v5, :cond_34

    .line 740
    move v4, v0

    .line 741
    .local v4, "tmp":F
    move v0, v3

    .line 742
    neg-float v3, v4

    .line 745
    .end local v4    # "tmp":F
    :cond_34
    new-instance v4, Lcom/android/server/gamepad/BsGamePadWorker$Pos;

    invoke-direct {v4, p0, v0, v3}, Lcom/android/server/gamepad/BsGamePadWorker$Pos;-><init>(Lcom/android/server/gamepad/BsGamePadWorker;FF)V

    return-object v4
.end method

.method private insertTouch(Lcom/android/server/gamepad/BsGamePadWorker$Pos;)I
    .registers 7
    .param p1, "pos"    # Lcom/android/server/gamepad/BsGamePadWorker$Pos;

    .line 342
    const/4 v0, -0x1

    .line 343
    .local v0, "index":I
    const/4 v1, 0x0

    move v2, v0

    move v0, v1

    .local v0, "i":I
    .local v2, "index":I
    :goto_4
    const/16 v3, 0x10

    if-ge v0, v3, :cond_2d

    .line 344
    iget-object v3, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mTouchList:[Lcom/android/server/gamepad/BsGamePadWorker$Pos;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/android/server/gamepad/BsGamePadWorker$Pos;->isValid()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 345
    add-int/lit8 v2, v2, 0x1

    .line 346
    iget-object v3, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mTouchList:[Lcom/android/server/gamepad/BsGamePadWorker$Pos;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/android/server/gamepad/BsGamePadWorker$Pos;->getTouchId()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/server/gamepad/BsGamePadWorker$Pos;->getTouchId()I

    move-result v4

    if-ne v3, v4, :cond_2a

    .line 347
    iget-object v1, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mTouchList:[Lcom/android/server/gamepad/BsGamePadWorker$Pos;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/android/server/gamepad/BsGamePadWorker$Pos;->setPos(Lcom/android/server/gamepad/BsGamePadWorker$Pos;)V

    .line 348
    return v2

    .line 343
    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 353
    .end local v0    # "i":I
    :cond_2d
    nop

    .local v1, "i":I
    :goto_2e
    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    if-ge v0, v3, :cond_46

    .line 354
    iget-object v1, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mTouchList:[Lcom/android/server/gamepad/BsGamePadWorker$Pos;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/server/gamepad/BsGamePadWorker$Pos;->isValid()Z

    move-result v1

    if-nez v1, :cond_43

    .line 355
    iget-object v1, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mTouchList:[Lcom/android/server/gamepad/BsGamePadWorker$Pos;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/android/server/gamepad/BsGamePadWorker$Pos;->setPos(Lcom/android/server/gamepad/BsGamePadWorker$Pos;)V

    .line 356
    return v0

    .line 353
    :cond_43
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_2e

    .line 360
    .end local v1    # "i":I
    :cond_46
    const/4 v0, -0x1

    return v0
.end method

.method private prevProcessJoystickPos(Lcom/android/server/gamepad/BsGamePadWorker$Pos;I)I
    .registers 9
    .param p1, "pos"    # Lcom/android/server/gamepad/BsGamePadWorker$Pos;
    .param p2, "radius"    # I

    .line 757
    invoke-virtual {p1}, Lcom/android/server/gamepad/BsGamePadWorker$Pos;->getX()F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/android/server/gamepad/BsGamePadWorker$Pos;->getY()F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 758
    .local v0, "length":D
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x3fe6666666666666L    # 0.7

    cmpl-double v2, v2, v4

    if-lez v2, :cond_41

    .line 759
    int-to-float v2, p2

    invoke-virtual {p1}, Lcom/android/server/gamepad/BsGamePadWorker$Pos;->getX()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-double v2, v2

    div-double/2addr v2, v0

    double-to-float v2, v2

    invoke-virtual {p1, v2}, Lcom/android/server/gamepad/BsGamePadWorker$Pos;->setX(F)V

    .line 760
    int-to-float v2, p2

    invoke-virtual {p1}, Lcom/android/server/gamepad/BsGamePadWorker$Pos;->getY()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-double v2, v2

    div-double/2addr v2, v0

    double-to-float v2, v2

    invoke-virtual {p1, v2}, Lcom/android/server/gamepad/BsGamePadWorker$Pos;->setY(F)V

    .line 761
    const/16 v2, 0xa

    return v2

    .line 763
    :cond_41
    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    mul-double/2addr v2, v0

    double-to-int v2, v2

    return v2
.end method

.method private processGameButtonEvent(Landroid/view/KeyEvent;)Z
    .registers 12
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 418
    const/4 v0, -0x1

    .line 419
    .local v0, "index":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_10

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-eq v1, v3, :cond_10

    .line 420
    return v2

    .line 423
    :cond_10
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 424
    .local v1, "keyCode":I
    iget v4, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mGamePadRotation:I

    const/16 v5, 0x10e

    if-ne v4, v5, :cond_2a

    .line 425
    packed-switch v1, :pswitch_data_e0

    :pswitch_1d
    goto :goto_2a

    .line 436
    :pswitch_1e
    const/16 v1, 0x63

    .line 437
    goto :goto_2a

    .line 433
    :pswitch_21
    const/16 v1, 0x60

    .line 434
    goto :goto_2a

    .line 430
    :pswitch_24
    const/16 v1, 0x64

    .line 431
    goto :goto_2a

    .line 427
    :pswitch_27
    const/16 v1, 0x61

    .line 428
    nop

    .line 443
    :cond_2a
    :goto_2a
    packed-switch v1, :pswitch_data_ee

    .line 475
    :pswitch_2d
    return v2

    .line 448
    :pswitch_2e
    const/4 v0, 0x1

    .line 449
    goto :goto_44

    .line 445
    :pswitch_30
    const/4 v0, 0x0

    .line 446
    goto :goto_44

    .line 472
    :pswitch_32
    const/16 v0, 0x9

    .line 473
    goto :goto_44

    .line 469
    :pswitch_35
    const/16 v0, 0x8

    .line 470
    goto :goto_44

    .line 466
    :pswitch_38
    const/4 v0, 0x7

    .line 467
    goto :goto_44

    .line 463
    :pswitch_3a
    const/4 v0, 0x6

    .line 464
    goto :goto_44

    .line 460
    :pswitch_3c
    const/4 v0, 0x5

    .line 461
    goto :goto_44

    .line 457
    :pswitch_3e
    const/4 v0, 0x4

    .line 458
    goto :goto_44

    .line 454
    :pswitch_40
    const/4 v0, 0x3

    .line 455
    goto :goto_44

    .line 451
    :pswitch_42
    const/4 v0, 0x2

    .line 452
    nop

    .line 478
    :goto_44
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_52

    .line 479
    iget-wide v4, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mGameButtonStatesBitMap:J

    shl-int v6, v3, v0

    int-to-long v6, v6

    or-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mGameButtonStatesBitMap:J

    .line 490
    :cond_52
    iget-object v4, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mGamePadMapper:Landroid/util/ArrayMap;

    iget-wide v5, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mGameButtonStatesBitMap:J

    long-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v4

    .line 491
    .local v4, "touchid":I
    if-ltz v4, :cond_69

    iget-object v5, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mGamePadMapper:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-lt v4, v5, :cond_9a

    .line 492
    :cond_69
    iget-object v5, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mGamePadMapper:Landroid/util/ArrayMap;

    iget-wide v6, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mGameButtonStatesBitMap:J

    const-wide/16 v8, 0x3ff

    and-long/2addr v6, v8

    long-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v4

    .line 493
    if-ltz v4, :cond_83

    iget-object v5, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mGamePadMapper:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-lt v4, v5, :cond_9a

    .line 494
    :cond_83
    iget-object v5, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mGamePadMapper:Landroid/util/ArrayMap;

    shl-int v6, v3, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v4

    .line 495
    if-ltz v4, :cond_99

    iget-object v5, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mGamePadMapper:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-lt v4, v5, :cond_9a

    .line 496
    :cond_99
    const/4 v4, -0x1

    .line 501
    :cond_9a
    const/4 v5, -0x1

    if-eq v4, v5, :cond_cc

    .line 518
    new-instance v6, Lcom/android/server/gamepad/BsGamePadWorker$Pos;

    iget-object v7, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mGamePadMapper:Landroid/util/ArrayMap;

    .line 519
    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/gamepad/BsGameKeyMap;

    invoke-virtual {v7}, Landroid/gamepad/BsGameKeyMap;->getCenterX()F

    move-result v7

    iget-object v8, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mGamePadMapper:Landroid/util/ArrayMap;

    .line 520
    invoke-virtual {v8, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/gamepad/BsGameKeyMap;

    invoke-virtual {v8}, Landroid/gamepad/BsGameKeyMap;->getCenterY()F

    move-result v8

    invoke-direct {v6, p0, v7, v8}, Lcom/android/server/gamepad/BsGamePadWorker$Pos;-><init>(Lcom/android/server/gamepad/BsGamePadWorker;FF)V

    .line 521
    .local v6, "pos":Lcom/android/server/gamepad/BsGamePadWorker$Pos;
    invoke-virtual {v6, v4}, Lcom/android/server/gamepad/BsGamePadWorker$Pos;->setTouchId(I)V

    .line 522
    invoke-direct {p0, v6}, Lcom/android/server/gamepad/BsGamePadWorker;->insertTouch(Lcom/android/server/gamepad/BsGamePadWorker$Pos;)I

    move-result v7

    .line 523
    .local v7, "actionIndex":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v8

    invoke-direct {p0, v7, v8}, Lcom/android/server/gamepad/BsGamePadWorker;->buildMotionEvent(II)Landroid/view/MotionEvent;

    move-result-object v8

    .line 524
    .local v8, "motionEvent":Landroid/view/MotionEvent;
    invoke-direct {p0, v8}, Lcom/android/server/gamepad/BsGamePadWorker;->fire(Landroid/view/MotionEvent;)V

    .line 527
    .end local v6    # "pos":Lcom/android/server/gamepad/BsGamePadWorker$Pos;
    .end local v7    # "actionIndex":I
    .end local v8    # "motionEvent":Landroid/view/MotionEvent;
    :cond_cc
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    if-ne v6, v3, :cond_db

    .line 528
    iget-wide v6, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mGameButtonStatesBitMap:J

    shl-int v8, v3, v0

    not-int v8, v8

    int-to-long v8, v8

    and-long/2addr v6, v8

    iput-wide v6, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mGameButtonStatesBitMap:J

    .line 531
    :cond_db
    if-eq v4, v5, :cond_df

    move v2, v3

    nop

    :cond_df
    return v2

    :pswitch_data_e0
    .packed-switch 0x60
        :pswitch_27
        :pswitch_24
        :pswitch_1d
        :pswitch_21
        :pswitch_1e
    .end packed-switch

    :pswitch_data_ee
    .packed-switch 0x60
        :pswitch_42
        :pswitch_40
        :pswitch_2d
        :pswitch_3e
        :pswitch_3c
        :pswitch_2d
        :pswitch_3a
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2d
        :pswitch_2d
        :pswitch_30
        :pswitch_2e
    .end packed-switch
.end method

.method private processInputEvent(Landroid/view/InputEvent;)Z
    .registers 6
    .param p1, "event"    # Landroid/view/InputEvent;

    .line 302
    instance-of v0, p1, Landroid/view/KeyEvent;

    const/16 v1, 0x2002

    const/4 v2, 0x0

    if-eqz v0, :cond_25

    .line 303
    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    move-result v0

    const/16 v3, 0x501

    if-ne v0, v3, :cond_17

    .line 304
    move-object v0, p1

    check-cast v0, Landroid/view/KeyEvent;

    invoke-direct {p0, v0}, Lcom/android/server/gamepad/BsGamePadWorker;->processGameButtonEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 306
    :cond_17
    iget-boolean v0, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mMouseSupport:Z

    if-eqz v0, :cond_24

    .line 307
    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    move-result v0

    if-ne v0, v1, :cond_23

    const/4 v2, 0x1

    nop

    :cond_23
    return v2

    .line 309
    :cond_24
    return v2

    .line 312
    :cond_25
    instance-of v0, p1, Landroid/view/MotionEvent;

    if-eqz v0, :cond_56

    .line 313
    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    move-result v0

    const/16 v3, 0x1002

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_3a

    .line 314
    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    invoke-direct {p0, v0}, Lcom/android/server/gamepad/BsGamePadWorker;->processTouchScreenEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 315
    :cond_3a
    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    move-result v0

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4e

    .line 316
    iget-boolean v0, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mMouseSupport:Z

    if-eqz v0, :cond_4d

    .line 317
    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    invoke-direct {p0, v0}, Lcom/android/server/gamepad/BsGamePadWorker;->processMouseEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 319
    :cond_4d
    return v2

    .line 322
    :cond_4e
    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    invoke-direct {p0, v0}, Lcom/android/server/gamepad/BsGamePadWorker;->processJoystickMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 326
    :cond_56
    return v2
.end method

.method private processJoystickDirectPadEvent(Landroid/view/MotionEvent;I)V
    .registers 22
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "historyPos"    # I

    move-object/from16 v0, p0

    .line 768
    const/4 v1, -0x1

    .line 769
    .local v1, "touchid":I
    move v3, v1

    const/4 v1, 0x0

    .line 769
    .local v1, "i":I
    .local v3, "touchid":I
    :goto_5
    const/4 v4, 0x3

    if-ge v1, v4, :cond_2d7

    .line 770
    const/16 v4, 0xa

    add-int v5, v4, v1

    move-object/from16 v6, p1

    move/from16 v7, p2

    invoke-direct {v0, v6, v7, v5}, Lcom/android/server/gamepad/BsGamePadWorker;->getPosFromMotionEvent(Landroid/view/MotionEvent;II)Lcom/android/server/gamepad/BsGamePadWorker$Pos;

    move-result-object v5

    .line 771
    .local v5, "pos":Lcom/android/server/gamepad/BsGamePadWorker$Pos;
    if-nez v5, :cond_1a

    .line 772
    nop

    .line 769
    .end local v5    # "pos":Lcom/android/server/gamepad/BsGamePadWorker$Pos;
    :goto_17
    move/from16 v16, v3

    goto :goto_58

    .line 775
    .restart local v5    # "pos":Lcom/android/server/gamepad/BsGamePadWorker$Pos;
    :cond_1a
    iget v8, v0, Lcom/android/server/gamepad/BsGamePadWorker;->mMainDirectionPad:I

    add-int v9, v4, v1

    if-eq v8, v9, :cond_21

    .line 776
    goto :goto_17

    .line 779
    :cond_21
    nop

    .line 780
    # getter for: Lcom/android/server/gamepad/BsGamePadWorker$Pos;->x:F
    invoke-static {v5}, Lcom/android/server/gamepad/BsGamePadWorker$Pos;->access$800(Lcom/android/server/gamepad/BsGamePadWorker$Pos;)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    const/4 v9, 0x0

    invoke-static {v8, v9}, Ljava/lang/Float;->compare(FF)I

    move-result v8

    const/4 v10, 0x1

    if-nez v8, :cond_43

    # getter for: Lcom/android/server/gamepad/BsGamePadWorker$Pos;->y:F
    invoke-static {v5}, Lcom/android/server/gamepad/BsGamePadWorker$Pos;->access$900(Lcom/android/server/gamepad/BsGamePadWorker$Pos;)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    invoke-static {v8, v9}, Ljava/lang/Float;->compare(FF)I

    move-result v8

    if-eqz v8, :cond_41

    goto :goto_43

    :cond_41
    const/4 v8, 0x0

    goto :goto_44

    :cond_43
    :goto_43
    move v8, v10

    .line 781
    .local v8, "isDirectionPressed":Z
    :goto_44
    const-wide/16 v13, 0x0

    const/4 v9, -0x1

    if-nez v8, :cond_dd

    .line 782
    move/from16 v16, v3

    iget-wide v2, v0, Lcom/android/server/gamepad/BsGamePadWorker;->mGameButtonStatesBitMap:J

    .line 782
    .end local v3    # "touchid":I
    .local v16, "touchid":I
    add-int v17, v4, v1

    shl-int v15, v10, v17

    int-to-long v11, v15

    and-long/2addr v2, v11

    cmp-long v2, v2, v13

    if-nez v2, :cond_5d

    .line 783
    nop

    .line 769
    .end local v5    # "pos":Lcom/android/server/gamepad/BsGamePadWorker$Pos;
    .end local v8    # "isDirectionPressed":Z
    .end local v16    # "touchid":I
    .restart local v3    # "touchid":I
    :goto_58
    move/from16 v3, v16

    const/4 v9, 0x0

    .line 769
    .end local v3    # "touchid":I
    .restart local v16    # "touchid":I
    goto/16 :goto_2d3

    .line 786
    .restart local v5    # "pos":Lcom/android/server/gamepad/BsGamePadWorker$Pos;
    .restart local v8    # "isDirectionPressed":Z
    :cond_5d
    add-int v2, v4, v1

    shl-int v2, v10, v2

    int-to-long v2, v2

    iget-wide v11, v0, Lcom/android/server/gamepad/BsGamePadWorker;->mGameButtonStatesBitMap:J

    const-wide/16 v13, 0x3ff

    and-long/2addr v11, v13

    or-long/2addr v2, v11

    .line 788
    .local v2, "touchMask":J
    iget-object v11, v0, Lcom/android/server/gamepad/BsGamePadWorker;->mGamePadMapper:Landroid/util/ArrayMap;

    long-to-int v12, v2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v11

    .line 789
    .end local v16    # "touchid":I
    .local v11, "touchid":I
    if-ltz v11, :cond_7d

    iget-object v12, v0, Lcom/android/server/gamepad/BsGamePadWorker;->mGamePadMapper:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v12

    if-lt v11, v12, :cond_95

    .line 790
    :cond_7d
    iget-object v12, v0, Lcom/android/server/gamepad/BsGamePadWorker;->mGamePadMapper:Landroid/util/ArrayMap;

    add-int v13, v4, v1

    shl-int/2addr v10, v13

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v12, v10}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v11

    .line 791
    if-ltz v11, :cond_94

    iget-object v10, v0, Lcom/android/server/gamepad/BsGamePadWorker;->mGamePadMapper:Landroid/util/ArrayMap;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v10

    if-lt v11, v10, :cond_95

    .line 792
    :cond_94
    const/4 v11, -0x1

    .line 796
    :cond_95
    if-ne v11, v9, :cond_98

    .line 797
    goto :goto_d9

    .line 800
    :cond_98
    new-instance v9, Lcom/android/server/gamepad/BsGamePadWorker$Pos;

    iget-object v10, v0, Lcom/android/server/gamepad/BsGamePadWorker;->mGamePadMapper:Landroid/util/ArrayMap;

    .line 801
    invoke-virtual {v10, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/gamepad/BsGameKeyMap;

    invoke-virtual {v10}, Landroid/gamepad/BsGameKeyMap;->getCenterX()F

    move-result v10

    iget-object v12, v0, Lcom/android/server/gamepad/BsGamePadWorker;->mGamePadMapper:Landroid/util/ArrayMap;

    .line 802
    invoke-virtual {v12, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/gamepad/BsGameKeyMap;

    invoke-virtual {v12}, Landroid/gamepad/BsGameKeyMap;->getCenterY()F

    move-result v12

    invoke-direct {v9, v0, v10, v12}, Lcom/android/server/gamepad/BsGamePadWorker$Pos;-><init>(Lcom/android/server/gamepad/BsGamePadWorker;FF)V

    .line 803
    .local v9, "upPos":Lcom/android/server/gamepad/BsGamePadWorker$Pos;
    invoke-virtual {v9, v11}, Lcom/android/server/gamepad/BsGamePadWorker$Pos;->setTouchId(I)V

    .line 805
    iget-object v10, v0, Lcom/android/server/gamepad/BsGamePadWorker;->mHandler:Landroid/os/Handler;

    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v10

    if-eqz v10, :cond_c6

    .line 806
    iget-object v10, v0, Lcom/android/server/gamepad/BsGamePadWorker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v10, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 808
    :cond_c6
    iget-object v10, v0, Lcom/android/server/gamepad/BsGamePadWorker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v10, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    .line 809
    .local v10, "msg":Landroid/os/Message;
    add-int/2addr v4, v1

    iput v4, v10, Landroid/os/Message;->arg1:I

    .line 810
    iput-object v9, v10, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 811
    iget-object v4, v0, Lcom/android/server/gamepad/BsGamePadWorker;->mHandler:Landroid/os/Handler;

    const-wide/16 v12, 0x3c

    invoke-virtual {v4, v10, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 812
    .end local v2    # "touchMask":J
    .end local v9    # "upPos":Lcom/android/server/gamepad/BsGamePadWorker$Pos;
    .end local v10    # "msg":Landroid/os/Message;
    nop

    .line 769
    .end local v5    # "pos":Lcom/android/server/gamepad/BsGamePadWorker$Pos;
    .end local v8    # "isDirectionPressed":Z
    :goto_d9
    move v3, v11

    .line 769
    .end local v11    # "touchid":I
    .restart local v3    # "touchid":I
    :goto_da
    const/4 v9, 0x0

    goto/16 :goto_2d3

    .line 813
    .restart local v5    # "pos":Lcom/android/server/gamepad/BsGamePadWorker$Pos;
    .restart local v8    # "isDirectionPressed":Z
    :cond_dd
    move/from16 v16, v3

    .line 813
    .end local v3    # "touchid":I
    .restart local v16    # "touchid":I
    iget-object v2, v0, Lcom/android/server/gamepad/BsGamePadWorker;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_ed

    .line 814
    iget-object v2, v0, Lcom/android/server/gamepad/BsGamePadWorker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 817
    :cond_ed
    iget v2, v0, Lcom/android/server/gamepad/BsGamePadWorker;->mMainDirectionPad:I

    add-int v3, v4, v1

    if-ne v2, v3, :cond_1e3

    .line 818
    iget-wide v2, v0, Lcom/android/server/gamepad/BsGamePadWorker;->mGameButtonStatesBitMap:J

    add-int v12, v4, v1

    shl-int v12, v10, v12

    int-to-long v11, v12

    and-long/2addr v2, v11

    cmp-long v2, v2, v13

    if-nez v2, :cond_1e3

    .line 819
    iget-wide v2, v0, Lcom/android/server/gamepad/BsGamePadWorker;->mGameButtonStatesBitMap:J

    add-int v11, v4, v1

    shl-int v11, v10, v11

    int-to-long v11, v11

    or-long/2addr v2, v11

    iput-wide v2, v0, Lcom/android/server/gamepad/BsGamePadWorker;->mGameButtonStatesBitMap:J

    .line 820
    iget-object v2, v0, Lcom/android/server/gamepad/BsGamePadWorker;->mGamePadMapper:Landroid/util/ArrayMap;

    iget-wide v11, v0, Lcom/android/server/gamepad/BsGamePadWorker;->mGameButtonStatesBitMap:J

    long-to-int v3, v11

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v2

    .line 821
    .end local v16    # "touchid":I
    .local v2, "touchid":I
    if-ltz v2, :cond_123

    iget-object v3, v0, Lcom/android/server/gamepad/BsGamePadWorker;->mGamePadMapper:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-lt v2, v3, :cond_121

    goto :goto_123

    .line 828
    .end local v2    # "touchid":I
    .restart local v3    # "touchid":I
    :cond_121
    :goto_121
    move v3, v2

    goto :goto_13d

    .line 822
    .end local v3    # "touchid":I
    .restart local v2    # "touchid":I
    :cond_123
    :goto_123
    iget-object v3, v0, Lcom/android/server/gamepad/BsGamePadWorker;->mGamePadMapper:Landroid/util/ArrayMap;

    add-int v11, v4, v1

    shl-int v11, v10, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v2

    .line 823
    if-ltz v2, :cond_13b

    iget-object v3, v0, Lcom/android/server/gamepad/BsGamePadWorker;->mGamePadMapper:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-lt v2, v3, :cond_121

    .line 824
    :cond_13b
    const/4 v2, -0x1

    goto :goto_121

    .line 828
    .end local v2    # "touchid":I
    .restart local v3    # "touchid":I
    :goto_13d
    if-ne v3, v9, :cond_196

    .line 829
    const-string v2, "BsGamePadWorker"

    const-string/jumbo v4, "something is wrong in BsGamePadService"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    const-string v2, "BsGamePadWorker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mGameButtonStatesBitMap = "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v0, Lcom/android/server/gamepad/BsGamePadWorker;->mGameButtonStatesBitMap:J

    long-to-int v9, v9

    invoke-static {v9}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    const/4 v2, 0x0

    .line 831
    .local v2, "j":I
    :goto_166
    const/16 v4, 0x10

    if-ge v2, v4, :cond_194

    .line 832
    const-string v4, "BsGamePadWorker"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "mTouchList["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "] = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/android/server/gamepad/BsGamePadWorker;->mTouchList:[Lcom/android/server/gamepad/BsGamePadWorker$Pos;

    aget-object v10, v10, v2

    invoke-virtual {v10}, Lcom/android/server/gamepad/BsGamePadWorker$Pos;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    add-int/lit8 v2, v2, 0x1

    goto :goto_166

    .line 834
    .end local v2    # "j":I
    :cond_194
    goto/16 :goto_da

    .line 837
    :cond_196
    new-instance v2, Lcom/android/server/gamepad/BsGamePadWorker$Pos;

    iget-object v11, v0, Lcom/android/server/gamepad/BsGamePadWorker;->mGamePadMapper:Landroid/util/ArrayMap;

    .line 838
    invoke-virtual {v11, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/gamepad/BsGameKeyMap;

    invoke-virtual {v11}, Landroid/gamepad/BsGameKeyMap;->getCenterX()F

    move-result v11

    iget-object v12, v0, Lcom/android/server/gamepad/BsGamePadWorker;->mGamePadMapper:Landroid/util/ArrayMap;

    .line 839
    invoke-virtual {v12, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/gamepad/BsGameKeyMap;

    invoke-virtual {v12}, Landroid/gamepad/BsGameKeyMap;->getCenterY()F

    move-result v12

    invoke-direct {v2, v0, v11, v12}, Lcom/android/server/gamepad/BsGamePadWorker$Pos;-><init>(Lcom/android/server/gamepad/BsGamePadWorker;FF)V

    .line 840
    .local v2, "downPos":Lcom/android/server/gamepad/BsGamePadWorker$Pos;
    invoke-virtual {v2, v3}, Lcom/android/server/gamepad/BsGamePadWorker$Pos;->setTouchId(I)V

    .line 841
    invoke-direct {v0, v2}, Lcom/android/server/gamepad/BsGamePadWorker;->insertTouch(Lcom/android/server/gamepad/BsGamePadWorker$Pos;)I

    move-result v11

    .line 843
    .local v11, "actionIndex":I
    const/4 v12, 0x0

    invoke-direct {v0, v11, v12}, Lcom/android/server/gamepad/BsGamePadWorker;->buildMotionEvent(II)Landroid/view/MotionEvent;

    move-result-object v15

    .line 844
    .local v15, "motionEvent":Landroid/view/MotionEvent;
    move-object v12, v15

    .line 844
    .end local v15    # "motionEvent":Landroid/view/MotionEvent;
    .local v12, "motionEvent":Landroid/view/MotionEvent;
    invoke-direct {v0, v12}, Lcom/android/server/gamepad/BsGamePadWorker;->fire(Landroid/view/MotionEvent;)V

    .line 857
    sget-boolean v16, Lcom/android/server/gamepad/BsGamePadWorker;->DEBUG_FOR_CHOOSE_MOVE:Z

    if-eqz v16, :cond_1e1

    .line 858
    const/4 v15, 0x2

    invoke-direct {v0, v11, v15}, Lcom/android/server/gamepad/BsGamePadWorker;->buildMotionEvent(II)Landroid/view/MotionEvent;

    move-result-object v12

    .line 859
    invoke-direct {v0, v12}, Lcom/android/server/gamepad/BsGamePadWorker;->fire(Landroid/view/MotionEvent;)V

    .line 860
    iget-object v13, v0, Lcom/android/server/gamepad/BsGamePadWorker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v13, v15}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v13

    .line 861
    .local v13, "msg":Landroid/os/Message;
    iput v1, v13, Landroid/os/Message;->arg1:I

    .line 862
    iget-object v14, v0, Lcom/android/server/gamepad/BsGamePadWorker;->mHandler:Landroid/os/Handler;

    move/from16 v18, v11

    const-wide/16 v10, 0x21

    .line 862
    .end local v11    # "actionIndex":I
    .local v18, "actionIndex":I
    invoke-virtual {v14, v13, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 862
    .end local v2    # "downPos":Lcom/android/server/gamepad/BsGamePadWorker$Pos;
    .end local v12    # "motionEvent":Landroid/view/MotionEvent;
    .end local v13    # "msg":Landroid/os/Message;
    .end local v18    # "actionIndex":I
    goto :goto_1e6

    .line 867
    :cond_1e1
    const/4 v15, 0x2

    goto :goto_1e6

    .line 867
    .end local v3    # "touchid":I
    .restart local v16    # "touchid":I
    :cond_1e3
    const/4 v15, 0x2

    move/from16 v3, v16

    .line 867
    .end local v16    # "touchid":I
    .restart local v3    # "touchid":I
    :goto_1e6
    if-ne v3, v9, :cond_231

    .line 868
    iget-object v2, v0, Lcom/android/server/gamepad/BsGamePadWorker;->mGamePadMapper:Landroid/util/ArrayMap;

    iget-wide v10, v0, Lcom/android/server/gamepad/BsGamePadWorker;->mGameButtonStatesBitMap:J

    long-to-int v10, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v3

    .line 869
    if-ltz v3, :cond_1ff

    iget-object v2, v0, Lcom/android/server/gamepad/BsGamePadWorker;->mGamePadMapper:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-lt v3, v2, :cond_231

    .line 870
    :cond_1ff
    iget v2, v0, Lcom/android/server/gamepad/BsGamePadWorker;->mMainDirectionPad:I

    add-int v10, v4, v1

    if-ne v2, v10, :cond_215

    .line 871
    iget-object v2, v0, Lcom/android/server/gamepad/BsGamePadWorker;->mGamePadMapper:Landroid/util/ArrayMap;

    add-int/2addr v4, v1

    const/4 v10, 0x1

    shl-int v4, v10, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v2

    .line 877
    .end local v3    # "touchid":I
    .local v2, "touchid":I
    :goto_213
    move v3, v2

    goto :goto_226

    .line 873
    .end local v2    # "touchid":I
    .restart local v3    # "touchid":I
    :cond_215
    iget-object v2, v0, Lcom/android/server/gamepad/BsGamePadWorker;->mGamePadMapper:Landroid/util/ArrayMap;

    iget-wide v10, v0, Lcom/android/server/gamepad/BsGamePadWorker;->mGameButtonStatesBitMap:J

    const-wide/16 v12, 0x3ff

    and-long/2addr v10, v12

    long-to-int v4, v10

    .line 874
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v2

    goto :goto_213

    .line 877
    :goto_226
    if-ltz v3, :cond_230

    iget-object v2, v0, Lcom/android/server/gamepad/BsGamePadWorker;->mGamePadMapper:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-lt v3, v2, :cond_231

    .line 878
    :cond_230
    const/4 v3, -0x1

    .line 883
    :cond_231
    if-ne v3, v9, :cond_235

    .line 884
    goto/16 :goto_da

    .line 887
    :cond_235
    const/4 v2, 0x0

    .line 891
    .local v2, "splitCount":I
    const/4 v4, 0x1

    invoke-direct {v0, v5, v4}, Lcom/android/server/gamepad/BsGamePadWorker;->processJoystickPos(Lcom/android/server/gamepad/BsGamePadWorker$Pos;I)V

    .line 894
    invoke-virtual {v5}, Lcom/android/server/gamepad/BsGamePadWorker$Pos;->getX()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v9

    if-eqz v4, :cond_257

    invoke-virtual {v5}, Lcom/android/server/gamepad/BsGamePadWorker$Pos;->getY()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, v9

    if-nez v4, :cond_255

    goto :goto_257

    :cond_255
    const/4 v9, 0x0

    goto :goto_263

    :cond_257
    :goto_257
    const-string/jumbo v4, "persist.bsgamepad.topup"

    const/4 v9, 0x0

    invoke-static {v4, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_263

    const/4 v4, 0x1

    goto :goto_264

    :cond_263
    :goto_263
    move v4, v9

    .line 896
    .local v4, "isTopUp":Z
    :goto_264
    invoke-virtual {v5}, Lcom/android/server/gamepad/BsGamePadWorker$Pos;->getX()F

    move-result v10

    iget-object v11, v0, Lcom/android/server/gamepad/BsGamePadWorker;->mGamePadMapper:Landroid/util/ArrayMap;

    .line 897
    invoke-virtual {v11, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/gamepad/BsGameKeyMap;

    invoke-virtual {v11}, Landroid/gamepad/BsGameKeyMap;->getRadius()F

    move-result v11

    float-to-int v11, v11

    int-to-float v11, v11

    mul-float/2addr v10, v11

    iget-object v11, v0, Lcom/android/server/gamepad/BsGamePadWorker;->mGamePadMapper:Landroid/util/ArrayMap;

    .line 898
    invoke-virtual {v11, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/gamepad/BsGameKeyMap;

    invoke-virtual {v11}, Landroid/gamepad/BsGameKeyMap;->getCenterX()F

    move-result v11

    add-float/2addr v10, v11

    .line 896
    invoke-virtual {v5, v10}, Lcom/android/server/gamepad/BsGamePadWorker$Pos;->setX(F)V

    .line 900
    invoke-virtual {v5}, Lcom/android/server/gamepad/BsGamePadWorker$Pos;->getY()F

    move-result v10

    iget-object v11, v0, Lcom/android/server/gamepad/BsGamePadWorker;->mGamePadMapper:Landroid/util/ArrayMap;

    .line 901
    invoke-virtual {v11, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/gamepad/BsGameKeyMap;

    invoke-virtual {v11}, Landroid/gamepad/BsGameKeyMap;->getRadius()F

    move-result v11

    float-to-int v11, v11

    int-to-float v11, v11

    mul-float/2addr v10, v11

    iget-object v11, v0, Lcom/android/server/gamepad/BsGamePadWorker;->mGamePadMapper:Landroid/util/ArrayMap;

    .line 902
    invoke-virtual {v11, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/gamepad/BsGameKeyMap;

    invoke-virtual {v11}, Landroid/gamepad/BsGameKeyMap;->getCenterY()F

    move-result v11

    add-float/2addr v10, v11

    .line 900
    invoke-virtual {v5, v10}, Lcom/android/server/gamepad/BsGamePadWorker$Pos;->setY(F)V

    .line 908
    invoke-virtual {v5, v3}, Lcom/android/server/gamepad/BsGamePadWorker$Pos;->setTouchId(I)V

    .line 910
    sget-boolean v10, Lcom/android/server/gamepad/BsGamePadWorker;->DEBUG_FOR_CHOOSE_MOVE:Z

    if-eqz v10, :cond_2c3

    .line 911
    iget-wide v10, v0, Lcom/android/server/gamepad/BsGamePadWorker;->mEnableSendMoveBitMap:J

    const/4 v12, 0x1

    shl-int v13, v12, v1

    int-to-long v13, v13

    and-long/2addr v10, v13

    const-wide/16 v13, 0x0

    cmp-long v10, v10, v13

    if-nez v10, :cond_2c4

    .line 912
    iget-object v10, v0, Lcom/android/server/gamepad/BsGamePadWorker;->mJoystickLastPos:[Lcom/android/server/gamepad/BsGamePadWorker$Pos;

    aput-object v5, v10, v1

    .line 913
    goto :goto_2d3

    .line 917
    :cond_2c3
    const/4 v12, 0x1

    :cond_2c4
    invoke-direct {v0, v5}, Lcom/android/server/gamepad/BsGamePadWorker;->insertTouch(Lcom/android/server/gamepad/BsGamePadWorker$Pos;)I

    move-result v10

    .line 924
    .local v10, "actionIndex":I
    if-eqz v4, :cond_2cb

    goto :goto_2cc

    :cond_2cb
    move v12, v15

    :goto_2cc
    invoke-direct {v0, v10, v12}, Lcom/android/server/gamepad/BsGamePadWorker;->buildMotionEvent(II)Landroid/view/MotionEvent;

    move-result-object v11

    .line 925
    .local v11, "downEvent":Landroid/view/MotionEvent;
    invoke-direct {v0, v11}, Lcom/android/server/gamepad/BsGamePadWorker;->fire(Landroid/view/MotionEvent;)V

    .line 769
    .end local v2    # "splitCount":I
    .end local v4    # "isTopUp":Z
    .end local v5    # "pos":Lcom/android/server/gamepad/BsGamePadWorker$Pos;
    .end local v8    # "isDirectionPressed":Z
    .end local v10    # "actionIndex":I
    .end local v11    # "downEvent":Landroid/view/MotionEvent;
    :goto_2d3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    .line 934
    .end local v1    # "i":I
    :cond_2d7
    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v16, v3

    .line 934
    .end local v3    # "touchid":I
    .restart local v16    # "touchid":I
    return-void
.end method

.method private processJoystickMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 704
    iget-object v0, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mGamePadMapper:Landroid/util/ArrayMap;

    iget v1, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mMainDirectionPad:I

    const/4 v2, 0x1

    shl-int v1, v2, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    .line 705
    .local v0, "touchid":I
    const/4 v1, 0x0

    if-ltz v0, :cond_34

    iget-object v3, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mGamePadMapper:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-lt v0, v3, :cond_1b

    goto :goto_34

    .line 709
    :cond_1b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_33

    .line 710
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v3

    .line 711
    .local v3, "historySize":I
    nop

    .local v1, "i":I
    :goto_27
    if-ge v1, v3, :cond_2f

    .line 712
    invoke-direct {p0, p1, v1}, Lcom/android/server/gamepad/BsGamePadWorker;->processJoystickDirectPadEvent(Landroid/view/MotionEvent;I)V

    .line 711
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 714
    .end local v1    # "i":I
    :cond_2f
    const/4 v1, -0x1

    invoke-direct {p0, p1, v1}, Lcom/android/server/gamepad/BsGamePadWorker;->processJoystickDirectPadEvent(Landroid/view/MotionEvent;I)V

    .line 716
    .end local v3    # "historySize":I
    :cond_33
    return v2

    .line 706
    :cond_34
    :goto_34
    return v1
.end method

.method private processJoystickPos(Lcom/android/server/gamepad/BsGamePadWorker$Pos;I)V
    .registers 9
    .param p1, "pos"    # Lcom/android/server/gamepad/BsGamePadWorker$Pos;
    .param p2, "radius"    # I

    .line 749
    invoke-virtual {p1}, Lcom/android/server/gamepad/BsGamePadWorker$Pos;->getX()F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/android/server/gamepad/BsGamePadWorker$Pos;->getY()F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 750
    .local v0, "length":D
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x3fe6666666666666L    # 0.7

    cmpl-double v2, v2, v4

    if-lez v2, :cond_3e

    .line 751
    int-to-float v2, p2

    invoke-virtual {p1}, Lcom/android/server/gamepad/BsGamePadWorker$Pos;->getX()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-double v2, v2

    div-double/2addr v2, v0

    double-to-float v2, v2

    invoke-virtual {p1, v2}, Lcom/android/server/gamepad/BsGamePadWorker$Pos;->setX(F)V

    .line 752
    int-to-float v2, p2

    invoke-virtual {p1}, Lcom/android/server/gamepad/BsGamePadWorker$Pos;->getY()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-double v2, v2

    div-double/2addr v2, v0

    double-to-float v2, v2

    invoke-virtual {p1, v2}, Lcom/android/server/gamepad/BsGamePadWorker$Pos;->setY(F)V

    .line 754
    :cond_3e
    return-void
.end method

.method private processMouseEvent(Landroid/view/MotionEvent;)Z
    .registers 16
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 613
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0xc

    const/4 v2, 0x7

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_2f

    .line 614
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v4, :cond_2f

    .line 615
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v3, :cond_2f

    .line 616
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v2, :cond_2f

    .line 617
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v5, 0xb

    if-eq v0, v5, :cond_2f

    .line 618
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v1, :cond_2f

    .line 619
    iget-boolean v0, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mMousePointerVisibility:Z

    xor-int/2addr v0, v4

    return v0

    .line 622
    :cond_2f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v2, :cond_129

    .line 623
    const/4 v0, -0x1

    .line 624
    .local v0, "key":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 625
    .local v2, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionButton()I

    move-result v5

    .line 626
    .local v5, "actionButton":I
    const/16 v6, 0x8

    if-eq v5, v6, :cond_115

    const/16 v6, 0x80

    if-eq v5, v6, :cond_69

    packed-switch v5, :pswitch_data_134

    .line 689
    return v4

    .line 639
    :pswitch_4a
    iget-boolean v1, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mMousePointerVisibility:Z

    if-eqz v1, :cond_4f

    .line 640
    return v4

    .line 642
    :cond_4f
    const/16 v0, 0x60

    .line 643
    goto/16 :goto_11d

    .line 628
    :pswitch_53
    iget-boolean v1, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mMousePointerVisibility:Z

    if-eqz v1, :cond_64

    .line 629
    if-eqz v2, :cond_5f

    if-eq v2, v4, :cond_5f

    if-ne v2, v3, :cond_5e

    goto :goto_5f

    .line 635
    :cond_5e
    return v4

    .line 632
    :cond_5f
    :goto_5f
    invoke-direct {p0, p1}, Lcom/android/server/gamepad/BsGamePadWorker;->processMouseTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 637
    :cond_64
    invoke-direct {p0, p1}, Lcom/android/server/gamepad/BsGamePadWorker;->processMouseTrackerEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 651
    :cond_69
    if-ne v2, v1, :cond_114

    .line 652
    iget-object v1, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_79

    .line 653
    iget-object v1, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 656
    :cond_79
    const/4 v1, -0x1

    .line 657
    .local v1, "touchid":I
    iget-wide v6, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mGameButtonStatesBitMap:J

    const-wide/16 v8, 0x2000

    and-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    const/16 v6, 0x2000

    if-eqz v3, :cond_b3

    .line 658
    iget-object v3, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mGamePadMapper:Landroid/util/ArrayMap;

    iget-wide v7, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mGameButtonStatesBitMap:J

    long-to-int v7, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v1

    .line 659
    if-ltz v1, :cond_9e

    iget-object v3, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mGamePadMapper:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-lt v1, v3, :cond_b3

    .line 660
    :cond_9e
    iget-object v3, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mGamePadMapper:Landroid/util/ArrayMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v1

    .line 661
    if-ltz v1, :cond_b2

    iget-object v3, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mGamePadMapper:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-lt v1, v3, :cond_b3

    .line 662
    :cond_b2
    const/4 v1, -0x1

    .line 667
    :cond_b3
    const/4 v3, -0x1

    if-eq v1, v3, :cond_e8

    .line 668
    new-instance v7, Lcom/android/server/gamepad/BsGamePadWorker$Pos;

    iget-object v8, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mGamePadMapper:Landroid/util/ArrayMap;

    .line 669
    invoke-virtual {v8, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/gamepad/BsGameKeyMap;

    invoke-virtual {v8}, Landroid/gamepad/BsGameKeyMap;->getCenterX()F

    move-result v8

    iget-object v9, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mGamePadMapper:Landroid/util/ArrayMap;

    .line 670
    invoke-virtual {v9, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/gamepad/BsGameKeyMap;

    invoke-virtual {v9}, Landroid/gamepad/BsGameKeyMap;->getCenterY()F

    move-result v9

    invoke-direct {v7, p0, v8, v9}, Lcom/android/server/gamepad/BsGamePadWorker$Pos;-><init>(Lcom/android/server/gamepad/BsGamePadWorker;FF)V

    .line 671
    .local v7, "upPos":Lcom/android/server/gamepad/BsGamePadWorker$Pos;
    invoke-virtual {v7, v1}, Lcom/android/server/gamepad/BsGamePadWorker$Pos;->setTouchId(I)V

    .line 672
    invoke-direct {p0, v7}, Lcom/android/server/gamepad/BsGamePadWorker;->insertTouch(Lcom/android/server/gamepad/BsGamePadWorker$Pos;)I

    move-result v8

    .line 673
    .local v8, "actionIndex":I
    invoke-direct {p0, v8, v4}, Lcom/android/server/gamepad/BsGamePadWorker;->buildMotionEvent(II)Landroid/view/MotionEvent;

    move-result-object v9

    .line 674
    .local v9, "upEvent":Landroid/view/MotionEvent;
    invoke-direct {p0, v9}, Lcom/android/server/gamepad/BsGamePadWorker;->fire(Landroid/view/MotionEvent;)V

    .line 675
    iget-wide v10, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mGameButtonStatesBitMap:J

    const-wide/16 v12, -0x2001

    and-long/2addr v10, v12

    iput-wide v10, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mGameButtonStatesBitMap:J

    .line 678
    .end local v7    # "upPos":Lcom/android/server/gamepad/BsGamePadWorker$Pos;
    .end local v8    # "actionIndex":I
    .end local v9    # "upEvent":Landroid/view/MotionEvent;
    :cond_e8
    iget-boolean v7, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mMousePointerVisibility:Z

    xor-int/2addr v7, v4

    iput-boolean v7, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mMousePointerVisibility:Z

    .line 679
    iget-boolean v7, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mMousePointerVisibility:Z

    if-eqz v7, :cond_fe

    .line 680
    iget-object v7, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mGamePadMapper:Landroid/util/ArrayMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 681
    invoke-direct {p0, v3}, Lcom/android/server/gamepad/BsGamePadWorker;->adjustTouchId(I)V

    goto :goto_114

    .line 683
    :cond_fe
    iget-object v3, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mGamePadMapper:Landroid/util/ArrayMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Landroid/gamepad/BsGameKeyMap;

    const/high16 v8, 0x44870000    # 1080.0f

    const/high16 v9, 0x44070000    # 540.0f

    const/4 v10, 0x0

    invoke-direct {v7, v8, v9, v10}, Landroid/gamepad/BsGameKeyMap;-><init>(FFF)V

    invoke-virtual {v3, v6, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 684
    invoke-direct {p0, v4}, Lcom/android/server/gamepad/BsGamePadWorker;->adjustTouchId(I)V

    .line 687
    .end local v1    # "touchid":I
    :cond_114
    :goto_114
    return v4

    .line 645
    :cond_115
    iget-boolean v1, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mMousePointerVisibility:Z

    if-eqz v1, :cond_11a

    .line 646
    return v4

    .line 648
    :cond_11a
    const/16 v0, 0x61

    .line 649
    nop

    .line 692
    :goto_11d
    new-instance v1, Landroid/view/KeyEvent;

    add-int/lit8 v3, v2, -0xb

    invoke-direct {v1, v3, v0}, Landroid/view/KeyEvent;-><init>(II)V

    .line 693
    .local v1, "keyEvent":Landroid/view/KeyEvent;
    invoke-direct {p0, v1}, Lcom/android/server/gamepad/BsGamePadWorker;->processGameButtonEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    return v3

    .line 695
    .end local v0    # "key":I
    .end local v1    # "keyEvent":Landroid/view/KeyEvent;
    .end local v2    # "action":I
    .end local v5    # "actionButton":I
    :cond_129
    iget-boolean v0, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mMousePointerVisibility:Z

    if-eqz v0, :cond_12f

    .line 696
    const/4 v0, 0x0

    return v0

    .line 698
    :cond_12f
    invoke-direct {p0, p1}, Lcom/android/server/gamepad/BsGamePadWorker;->processMouseTrackerEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_data_134
    .packed-switch 0x0
        :pswitch_53
        :pswitch_4a
    .end packed-switch
.end method

.method private processMouseTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 535
    iget-boolean v0, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mMousePointerVisibility:Z

    const/4 v1, 0x1

    if-nez v0, :cond_6

    .line 536
    return v1

    .line 539
    :cond_6
    iget-object v0, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mGamePadMapper:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_10

    .line 540
    const/4 v0, 0x0

    return v0

    .line 543
    :cond_10
    new-instance v0, Lcom/android/server/gamepad/BsGamePadWorker$Pos;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {v0, p0, v2, v3}, Lcom/android/server/gamepad/BsGamePadWorker$Pos;-><init>(Lcom/android/server/gamepad/BsGamePadWorker;FF)V

    .line 544
    .local v0, "pos":Lcom/android/server/gamepad/BsGamePadWorker$Pos;
    invoke-virtual {v0, v1}, Lcom/android/server/gamepad/BsGamePadWorker$Pos;->setFromTouch(Z)V

    .line 545
    const/16 v2, 0xf

    invoke-virtual {v0, v2}, Lcom/android/server/gamepad/BsGamePadWorker$Pos;->setTouchId(I)V

    .line 546
    invoke-direct {p0, v0}, Lcom/android/server/gamepad/BsGamePadWorker;->insertTouch(Lcom/android/server/gamepad/BsGamePadWorker$Pos;)I

    move-result v2

    .line 547
    .local v2, "actionIndex":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    invoke-direct {p0, v2, v3}, Lcom/android/server/gamepad/BsGamePadWorker;->buildMotionEvent(II)Landroid/view/MotionEvent;

    move-result-object v3

    .line 548
    .local v3, "motionEvent":Landroid/view/MotionEvent;
    invoke-direct {p0, v3}, Lcom/android/server/gamepad/BsGamePadWorker;->fire(Landroid/view/MotionEvent;)V

    .line 549
    return v1
.end method

.method private processMouseTrackerEvent(Landroid/view/MotionEvent;)Z
    .registers 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 553
    iget-object v0, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 554
    iget-object v0, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 557
    :cond_e
    const/4 v0, -0x1

    .line 558
    .local v0, "touchid":I
    iget-wide v2, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mGameButtonStatesBitMap:J

    const-wide/16 v4, 0x2000

    and-long/2addr v2, v4

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    const/16 v3, 0x2000

    const/4 v6, 0x1

    const/4 v7, -0x1

    if-nez v2, :cond_86

    .line 559
    iget-wide v8, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mGameButtonStatesBitMap:J

    or-long/2addr v4, v8

    iput-wide v4, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mGameButtonStatesBitMap:J

    .line 560
    iget-object v2, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mGamePadMapper:Landroid/util/ArrayMap;

    iget-wide v4, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mGameButtonStatesBitMap:J

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    .line 561
    if-ltz v0, :cond_3a

    iget-object v2, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mGamePadMapper:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-lt v0, v2, :cond_4f

    .line 562
    :cond_3a
    iget-object v2, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mGamePadMapper:Landroid/util/ArrayMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    .line 563
    if-ltz v0, :cond_4e

    iget-object v2, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mGamePadMapper:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-lt v0, v2, :cond_4f

    .line 564
    :cond_4e
    const/4 v0, -0x1

    .line 568
    :cond_4f
    if-ne v0, v7, :cond_52

    .line 569
    return v6

    .line 572
    :cond_52
    iget-object v2, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mGamePadMapper:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/gamepad/BsGameKeyMap;

    invoke-virtual {v2}, Landroid/gamepad/BsGameKeyMap;->getCenterX()F

    move-result v2

    iput v2, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mMouseTrackerLastX:F

    .line 573
    iget-object v2, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mGamePadMapper:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/gamepad/BsGameKeyMap;

    invoke-virtual {v2}, Landroid/gamepad/BsGameKeyMap;->getCenterY()F

    move-result v2

    iput v2, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mMouseTrackerLastY:F

    .line 575
    new-instance v2, Lcom/android/server/gamepad/BsGamePadWorker$Pos;

    iget v4, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mMouseTrackerLastX:F

    iget v5, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mMouseTrackerLastY:F

    invoke-direct {v2, p0, v4, v5}, Lcom/android/server/gamepad/BsGamePadWorker$Pos;-><init>(Lcom/android/server/gamepad/BsGamePadWorker;FF)V

    .line 576
    .local v2, "downPos":Lcom/android/server/gamepad/BsGamePadWorker$Pos;
    invoke-virtual {v2, v0}, Lcom/android/server/gamepad/BsGamePadWorker$Pos;->setTouchId(I)V

    .line 577
    invoke-direct {p0, v2}, Lcom/android/server/gamepad/BsGamePadWorker;->insertTouch(Lcom/android/server/gamepad/BsGamePadWorker$Pos;)I

    move-result v4

    .line 579
    .local v4, "actionIndex":I
    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/android/server/gamepad/BsGamePadWorker;->buildMotionEvent(II)Landroid/view/MotionEvent;

    move-result-object v5

    .line 580
    .local v5, "motionEvent":Landroid/view/MotionEvent;
    invoke-direct {p0, v5}, Lcom/android/server/gamepad/BsGamePadWorker;->fire(Landroid/view/MotionEvent;)V

    .line 583
    .end local v2    # "downPos":Lcom/android/server/gamepad/BsGamePadWorker$Pos;
    .end local v4    # "actionIndex":I
    .end local v5    # "motionEvent":Landroid/view/MotionEvent;
    :cond_86
    if-ne v0, v7, :cond_b4

    .line 584
    iget-object v2, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mGamePadMapper:Landroid/util/ArrayMap;

    iget-wide v4, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mGameButtonStatesBitMap:J

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    .line 585
    if-ltz v0, :cond_9f

    iget-object v2, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mGamePadMapper:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-lt v0, v2, :cond_b4

    .line 586
    :cond_9f
    iget-object v2, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mGamePadMapper:Landroid/util/ArrayMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    .line 587
    if-ltz v0, :cond_b3

    iget-object v2, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mGamePadMapper:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-lt v0, v2, :cond_b4

    .line 588
    :cond_b3
    const/4 v0, -0x1

    .line 593
    :cond_b4
    if-ne v0, v7, :cond_b7

    .line 594
    return v6

    .line 597
    :cond_b7
    iget v2, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mMouseTrackerLastX:F

    const/16 v3, 0x1b

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mMouseTrackerLastX:F

    .line 598
    iget v2, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mMouseTrackerLastY:F

    const/16 v3, 0x1c

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v3

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mMouseTrackerLastY:F

    .line 599
    new-instance v2, Lcom/android/server/gamepad/BsGamePadWorker$Pos;

    iget v3, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mMouseTrackerLastX:F

    iget v4, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mMouseTrackerLastY:F

    invoke-direct {v2, p0, v3, v4}, Lcom/android/server/gamepad/BsGamePadWorker$Pos;-><init>(Lcom/android/server/gamepad/BsGamePadWorker;FF)V

    .line 600
    .local v2, "movePos":Lcom/android/server/gamepad/BsGamePadWorker$Pos;
    invoke-virtual {v2, v0}, Lcom/android/server/gamepad/BsGamePadWorker$Pos;->setTouchId(I)V

    .line 601
    invoke-direct {p0, v2}, Lcom/android/server/gamepad/BsGamePadWorker;->insertTouch(Lcom/android/server/gamepad/BsGamePadWorker$Pos;)I

    move-result v3

    .line 602
    .local v3, "actionIndex":I
    const/4 v4, 0x2

    invoke-direct {p0, v3, v4}, Lcom/android/server/gamepad/BsGamePadWorker;->buildMotionEvent(II)Landroid/view/MotionEvent;

    move-result-object v4

    .line 603
    .local v4, "motionEvent":Landroid/view/MotionEvent;
    invoke-direct {p0, v4}, Lcom/android/server/gamepad/BsGamePadWorker;->fire(Landroid/view/MotionEvent;)V

    .line 605
    iget-object v5, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 606
    .local v1, "msg":Landroid/os/Message;
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 607
    iget-object v5, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mHandler:Landroid/os/Handler;

    const-wide/16 v7, 0x3c

    invoke-virtual {v5, v1, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 609
    return v6
.end method

.method private processTouchScreenEvent(Landroid/view/MotionEvent;)Z
    .registers 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 394
    iget-object v0, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mGamePadMapper:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 395
    return v1

    .line 398
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 399
    .local v0, "count":I
    const/4 v2, -0x1

    .line 400
    .local v2, "actionIndex":I
    nop

    .local v1, "i":I
    :goto_10
    const/4 v3, 0x1

    if-ge v1, v0, :cond_42

    .line 401
    new-instance v4, Lcom/android/server/gamepad/BsGamePadWorker$Pos;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    invoke-direct {v4, p0, v5, v6}, Lcom/android/server/gamepad/BsGamePadWorker$Pos;-><init>(Lcom/android/server/gamepad/BsGamePadWorker;FF)V

    .line 402
    .local v4, "pos":Lcom/android/server/gamepad/BsGamePadWorker$Pos;
    invoke-virtual {v4, v3}, Lcom/android/server/gamepad/BsGamePadWorker$Pos;->setFromTouch(Z)V

    .line 403
    iget-object v3, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mGamePadMapper:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    add-int/2addr v3, v5

    invoke-virtual {v4, v3}, Lcom/android/server/gamepad/BsGamePadWorker$Pos;->setTouchId(I)V

    .line 404
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    if-ne v1, v3, :cond_3c

    .line 405
    invoke-direct {p0, v4}, Lcom/android/server/gamepad/BsGamePadWorker;->insertTouch(Lcom/android/server/gamepad/BsGamePadWorker$Pos;)I

    move-result v2

    goto :goto_3f

    .line 407
    :cond_3c
    invoke-direct {p0, v4}, Lcom/android/server/gamepad/BsGamePadWorker;->insertTouch(Lcom/android/server/gamepad/BsGamePadWorker$Pos;)I

    .line 400
    .end local v4    # "pos":Lcom/android/server/gamepad/BsGamePadWorker$Pos;
    :goto_3f
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 411
    .end local v1    # "i":I
    :cond_42
    nop

    .line 412
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    .line 411
    invoke-direct {p0, v2, v1}, Lcom/android/server/gamepad/BsGamePadWorker;->buildMotionEvent(II)Landroid/view/MotionEvent;

    move-result-object v1

    .line 413
    .local v1, "motionEvent":Landroid/view/MotionEvent;
    invoke-direct {p0, v1}, Lcom/android/server/gamepad/BsGamePadWorker;->fire(Landroid/view/MotionEvent;)V

    .line 414
    return v3
.end method

.method private removeTouch(I)Z
    .registers 5
    .param p1, "actionIndex"    # I

    .line 375
    const/4 v0, 0x0

    if-ltz p1, :cond_26

    const/16 v1, 0x10

    if-lt p1, v1, :cond_8

    goto :goto_26

    .line 379
    :cond_8
    nop

    .local v0, "i":I
    :goto_9
    if-ge v0, v1, :cond_24

    .line 380
    iget-object v2, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mTouchList:[Lcom/android/server/gamepad/BsGamePadWorker$Pos;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/server/gamepad/BsGamePadWorker$Pos;->isValid()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 381
    if-nez p1, :cond_1f

    .line 382
    iget-object v1, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mTouchList:[Lcom/android/server/gamepad/BsGamePadWorker$Pos;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/server/gamepad/BsGamePadWorker$Pos;->reset()V

    .line 383
    goto :goto_24

    .line 386
    :cond_1f
    add-int/lit8 p1, p1, -0x1

    .line 379
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 390
    .end local v0    # "i":I
    :cond_24
    :goto_24
    const/4 v0, 0x1

    return v0

    .line 376
    :cond_26
    :goto_26
    return v0
.end method

.method private removeTouch(Lcom/android/server/gamepad/BsGamePadWorker$Pos;)Z
    .registers 5
    .param p1, "pos"    # Lcom/android/server/gamepad/BsGamePadWorker$Pos;

    .line 364
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_2
    const/16 v2, 0x10

    if-ge v1, v2, :cond_1c

    .line 365
    iget-object v2, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mTouchList:[Lcom/android/server/gamepad/BsGamePadWorker$Pos;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lcom/android/server/gamepad/BsGamePadWorker$Pos;->equals(Lcom/android/server/gamepad/BsGamePadWorker$Pos;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 366
    iget-object v0, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mTouchList:[Lcom/android/server/gamepad/BsGamePadWorker$Pos;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/server/gamepad/BsGamePadWorker$Pos;->reset()V

    .line 367
    const/4 v0, 0x1

    return v0

    .line 364
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 371
    .end local v1    # "i":I
    :cond_1c
    return v0
.end method

.method private splitMotionEvent(IFFFFI)V
    .registers 13
    .param p1, "touchid"    # I
    .param p2, "firstX"    # F
    .param p3, "firstY"    # F
    .param p4, "secondX"    # F
    .param p5, "secondY"    # F
    .param p6, "splitCount"    # I

    .line 937
    if-nez p6, :cond_3

    .line 938
    return-void

    .line 941
    :cond_3
    sub-float v0, p4, p2

    int-to-float v1, p6

    div-float/2addr v0, v1

    .line 942
    .local v0, "offsetX":F
    sub-float v1, p5, p3

    int-to-float v2, p6

    div-float/2addr v1, v2

    .line 943
    .local v1, "offsetY":F
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_c
    if-ge v2, p6, :cond_2b

    .line 944
    new-instance v3, Lcom/android/server/gamepad/BsGamePadWorker$Pos;

    int-to-float v4, v2

    mul-float/2addr v4, v0

    add-float/2addr v4, p2

    int-to-float v5, v2

    mul-float/2addr v5, v1

    add-float/2addr v5, p3

    invoke-direct {v3, p0, v4, v5}, Lcom/android/server/gamepad/BsGamePadWorker$Pos;-><init>(Lcom/android/server/gamepad/BsGamePadWorker;FF)V

    .line 945
    .local v3, "pos":Lcom/android/server/gamepad/BsGamePadWorker$Pos;
    invoke-virtual {v3, p1}, Lcom/android/server/gamepad/BsGamePadWorker$Pos;->setTouchId(I)V

    .line 946
    invoke-direct {p0, v3}, Lcom/android/server/gamepad/BsGamePadWorker;->insertTouch(Lcom/android/server/gamepad/BsGamePadWorker$Pos;)I

    move-result v4

    .line 947
    .local v4, "actionIndex":I
    const/4 v5, 0x2

    invoke-direct {p0, v4, v5}, Lcom/android/server/gamepad/BsGamePadWorker;->buildMotionEvent(II)Landroid/view/MotionEvent;

    move-result-object v5

    .line 948
    .local v5, "downEvent":Landroid/view/MotionEvent;
    invoke-direct {p0, v5}, Lcom/android/server/gamepad/BsGamePadWorker;->fire(Landroid/view/MotionEvent;)V

    .line 943
    .end local v3    # "pos":Lcom/android/server/gamepad/BsGamePadWorker$Pos;
    .end local v4    # "actionIndex":I
    .end local v5    # "downEvent":Landroid/view/MotionEvent;
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 950
    .end local v2    # "i":I
    :cond_2b
    return-void
.end method

.method private updateTouchId(II)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "touchid"    # I

    .line 330
    iget-object v0, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mTouchList:[Lcom/android/server/gamepad/BsGamePadWorker$Pos;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/server/gamepad/BsGamePadWorker$Pos;->setTouchId(I)V

    .line 331
    return-void
.end method


# virtual methods
.method public loadKeyMap(Ljava/util/Map;ZI)V
    .registers 5
    .param p1, "map"    # Ljava/util/Map;
    .param p2, "isChooseMove"    # Z
    .param p3, "rotation"    # I

    .line 265
    sput-boolean p2, Lcom/android/server/gamepad/BsGamePadWorker;->DEBUG_FOR_CHOOSE_MOVE:Z

    .line 266
    iget-object v0, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mGamePadMapper:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->putAll(Ljava/util/Map;)V

    .line 267
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mMousePointerVisibility:Z

    .line 268
    iput p3, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mGamePadRotation:I

    .line 269
    return-void
.end method

.method public onInputEvent(Landroid/view/InputEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/InputEvent;

    .line 289
    const/4 v0, 0x0

    .line 290
    .local v0, "isHandled":Z
    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    move-result v1

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-eq v1, v2, :cond_2e

    .line 291
    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    move-result v1

    const/16 v2, 0x401

    and-int/2addr v1, v2

    if-eq v1, v2, :cond_2e

    .line 292
    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    move-result v1

    const/16 v2, 0x2002

    and-int/2addr v1, v2

    if-eq v1, v2, :cond_2e

    .line 293
    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    move-result v1

    const/16 v2, 0x1002

    and-int/2addr v1, v2

    if-eq v1, v2, :cond_2e

    .line 294
    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    move-result v1

    const/16 v2, 0x101

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_32

    .line 296
    :cond_2e
    invoke-direct {p0, p1}, Lcom/android/server/gamepad/BsGamePadWorker;->processInputEvent(Landroid/view/InputEvent;)Z

    move-result v0

    .line 298
    :cond_32
    return v0
.end method

.method public unloadKeyMap()V
    .registers 4

    .line 272
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v1, 0x10

    const/4 v2, 0x1

    if-ge v0, v1, :cond_1b

    .line 273
    iget-object v1, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mTouchList:[Lcom/android/server/gamepad/BsGamePadWorker$Pos;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/server/gamepad/BsGamePadWorker$Pos;->isValid()Z

    move-result v1

    if-nez v1, :cond_11

    .line 274
    goto :goto_18

    .line 277
    :cond_11
    invoke-direct {p0, v0, v2}, Lcom/android/server/gamepad/BsGamePadWorker;->buildMotionEvent(II)Landroid/view/MotionEvent;

    move-result-object v1

    .line 278
    .local v1, "motionEvent":Landroid/view/MotionEvent;
    invoke-direct {p0, v1}, Lcom/android/server/gamepad/BsGamePadWorker;->fire(Landroid/view/MotionEvent;)V

    .line 272
    .end local v1    # "motionEvent":Landroid/view/MotionEvent;
    :goto_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 281
    .end local v0    # "i":I
    :cond_1b
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mGameButtonStatesBitMap:J

    .line 282
    iget-object v0, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mGamePadMapper:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 284
    iput-boolean v2, p0, Lcom/android/server/gamepad/BsGamePadWorker;->mMousePointerVisibility:Z

    .line 285
    return-void
.end method
