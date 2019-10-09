.class public Lcom/android/server/lights/MiuiLightsService$LightImpl;
.super Lcom/android/server/lights/LightsService$LightImpl;
.source "MiuiLightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/lights/MiuiLightsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LightImpl"
.end annotation


# instance fields
.field private lightStates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/lights/LightState;",
            ">;"
        }
    .end annotation
.end field

.field private mBrightnessMode:I

.field private mColor:I

.field private mDisabled:Z

.field private mId:I

.field private mIsShutDown:Z

.field private mLastColor:I

.field public mLastLightStyle:I

.field private mMode:I

.field private mOffMS:I

.field private mOnMS:I

.field private mUid:I

.field private pkg_name:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/lights/MiuiLightsService;


# direct methods
.method private constructor <init>(Lcom/android/server/lights/MiuiLightsService;I)V
    .registers 6
    .param p1, "this$0"    # Lcom/android/server/lights/MiuiLightsService;
    .param p2, "id"    # I

    .line 176
    iput-object p1, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    .line 177
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/lights/LightsService$LightImpl;-><init>(Lcom/android/server/lights/LightsService;II)V

    .line 172
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mLastLightStyle:I

    .line 174
    iput-boolean v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mIsShutDown:Z

    .line 178
    iput p2, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mId:I

    .line 179
    iget v1, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mId:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_19

    iget v1, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mId:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_18

    goto :goto_19

    :cond_18
    goto :goto_1a

    :cond_19
    :goto_19
    const/4 v0, 0x1

    :goto_1a
    iput-boolean v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mDisabled:Z

    .line 181
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/lights/MiuiLightsService;ILcom/android/server/lights/MiuiLightsService$1;)V
    .registers 4
    .param p1, "x0"    # Lcom/android/server/lights/MiuiLightsService;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/android/server/lights/MiuiLightsService$1;

    .line 161
    invoke-direct {p0, p1, p2}, Lcom/android/server/lights/MiuiLightsService$LightImpl;-><init>(Lcom/android/server/lights/MiuiLightsService;I)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/lights/MiuiLightsService$LightImpl;IIIII)V
    .registers 6
    .param p0, "x0"    # Lcom/android/server/lights/MiuiLightsService$LightImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .line 161
    invoke-direct/range {p0 .. p5}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->realSetLightLocked(IIIII)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/lights/MiuiLightsService$LightImpl;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/MiuiLightsService$LightImpl;

    .line 161
    iget v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mColor:I

    return v0
.end method

.method static synthetic access$3900(Lcom/android/server/lights/MiuiLightsService$LightImpl;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/MiuiLightsService$LightImpl;

    .line 161
    iget-boolean v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mDisabled:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/android/server/lights/MiuiLightsService$LightImpl;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/MiuiLightsService$LightImpl;

    .line 161
    iget v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mMode:I

    return v0
.end method

.method static synthetic access$4100(Lcom/android/server/lights/MiuiLightsService$LightImpl;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/MiuiLightsService$LightImpl;

    .line 161
    iget v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mOnMS:I

    return v0
.end method

.method static synthetic access$4200(Lcom/android/server/lights/MiuiLightsService$LightImpl;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/MiuiLightsService$LightImpl;

    .line 161
    iget v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mOffMS:I

    return v0
.end method

.method static synthetic access$4300(Lcom/android/server/lights/MiuiLightsService$LightImpl;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/MiuiLightsService$LightImpl;

    .line 161
    iget v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mBrightnessMode:I

    return v0
.end method

.method private realSetLightLocked(IIIII)V
    .registers 15
    .param p1, "color"    # I
    .param p2, "mode"    # I
    .param p3, "onMS"    # I
    .param p4, "offMS"    # I
    .param p5, "brightnessMode"    # I

    .line 323
    iget-boolean v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mIsShutDown:Z

    if-eqz v0, :cond_5

    .line 324
    const/4 p1, 0x0

    .line 326
    :cond_5
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    invoke-virtual {v1}, Lcom/android/server/lights/MiuiLightsService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mId:I

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/lights/MiuiLightsService;->notifySetLightCallback(Landroid/content/Context;IIIIII)V

    .line 328
    iget v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mId:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_90

    iget v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mId:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_25

    goto/16 :goto_90

    .line 333
    :cond_25
    iget v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mId:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2f

    iget v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mId:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_84

    :cond_2f
    iget v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mLastColor:I

    if-eq v0, p1, :cond_84

    .line 335
    iget-object v7, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    new-instance v8, Lcom/android/server/lights/LightState;

    iget v1, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mId:I

    move-object v0, v8

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/lights/LightState;-><init>(IIIIII)V

    # invokes: Lcom/android/server/lights/MiuiLightsService;->addToLightCollectionLocked(Lcom/android/server/lights/LightState;)V
    invoke-static {v7, v8}, Lcom/android/server/lights/MiuiLightsService;->access$2200(Lcom/android/server/lights/MiuiLightsService;Lcom/android/server/lights/LightState;)V

    .line 336
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # getter for: Lcom/android/server/lights/MiuiLightsService;->mLedEvents:Ljava/util/List;
    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService;->access$2300(Lcom/android/server/lights/MiuiLightsService;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_57

    .line 337
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/android/server/lights/MiuiLightsService;->mLedEvents:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/android/server/lights/MiuiLightsService;->access$2302(Lcom/android/server/lights/MiuiLightsService;Ljava/util/List;)Ljava/util/List;

    .line 339
    :cond_57
    if-nez p1, :cond_6f

    .line 340
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # getter for: Lcom/android/server/lights/MiuiLightsService;->mIsLedTurnOn:Z
    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService;->access$2400(Lcom/android/server/lights/MiuiLightsService;)Z

    move-result v0

    if-eqz v0, :cond_84

    .line 341
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/lights/MiuiLightsService;->mIsLedTurnOn:Z
    invoke-static {v0, v1}, Lcom/android/server/lights/MiuiLightsService;->access$2402(Lcom/android/server/lights/MiuiLightsService;Z)Z

    .line 342
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    iget v2, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mId:I

    # invokes: Lcom/android/server/lights/MiuiLightsService;->reportLedEventLocked(IZII)V
    invoke-static {v0, v2, v1, p3, p4}, Lcom/android/server/lights/MiuiLightsService;->access$2000(Lcom/android/server/lights/MiuiLightsService;IZII)V

    goto :goto_84

    .line 345
    :cond_6f
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # getter for: Lcom/android/server/lights/MiuiLightsService;->mIsLedTurnOn:Z
    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService;->access$2400(Lcom/android/server/lights/MiuiLightsService;)Z

    move-result v0

    if-nez v0, :cond_84

    .line 346
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/lights/MiuiLightsService;->mIsLedTurnOn:Z
    invoke-static {v0, v1}, Lcom/android/server/lights/MiuiLightsService;->access$2402(Lcom/android/server/lights/MiuiLightsService;Z)Z

    .line 347
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    iget v2, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mId:I

    # invokes: Lcom/android/server/lights/MiuiLightsService;->reportLedEventLocked(IZII)V
    invoke-static {v0, v2, v1, p3, p4}, Lcom/android/server/lights/MiuiLightsService;->access$2000(Lcom/android/server/lights/MiuiLightsService;IZII)V

    .line 351
    :cond_84
    :goto_84
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-super/range {v0 .. v5}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    .line 352
    iput p1, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mLastColor:I

    .line 353
    return-void

    .line 329
    :cond_90
    :goto_90
    const/4 v0, 0x4

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/server/lights/LightsService;->setLight_native(IIIIII)V

    .line 330
    return-void
.end method

.method private updateState(IIIII)V
    .registers 6
    .param p1, "color"    # I
    .param p2, "mode"    # I
    .param p3, "onMS"    # I
    .param p4, "offMS"    # I
    .param p5, "brightnessMode"    # I

    .line 356
    iput p1, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mColor:I

    .line 357
    iput p2, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mMode:I

    .line 358
    iput p3, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mOnMS:I

    .line 359
    iput p4, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mOffMS:I

    .line 360
    iput p5, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mBrightnessMode:I

    .line 361
    return-void
.end method

.method private updateState(Ljava/lang/String;IILjava/util/List;)V
    .registers 5
    .param p1, "pkg_name"    # Ljava/lang/String;
    .param p2, "mUid"    # I
    .param p3, "styleType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List<",
            "Lcom/android/server/lights/LightState;",
            ">;)V"
        }
    .end annotation

    .line 364
    .local p4, "lightStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/lights/LightState;>;"
    iput-object p1, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->pkg_name:Ljava/lang/String;

    .line 365
    iput p2, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mUid:I

    .line 366
    iput p3, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mLastLightStyle:I

    .line 367
    iput-object p4, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->lightStates:Ljava/util/List;

    .line 368
    return-void
.end method


# virtual methods
.method public setBrightness(IZ)V
    .registers 3
    .param p1, "brightness"    # I
    .param p2, "isShutDown"    # Z

    .line 317
    iput-boolean p2, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mIsShutDown:Z

    .line 318
    invoke-super {p0, p1}, Lcom/android/server/lights/LightsService$LightImpl;->setBrightness(I)V

    .line 319
    return-void
.end method

.method setColorfulLightLocked(Ljava/lang/String;IILjava/util/List;)V
    .registers 8
    .param p1, "pkg_name"    # Ljava/lang/String;
    .param p2, "mUid"    # I
    .param p3, "styleType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List<",
            "Lcom/android/server/lights/LightState;",
            ">;)V"
        }
    .end annotation

    .line 279
    .local p4, "lightStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/lights/LightState;>;"
    iget v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mId:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_75

    if-nez p4, :cond_9

    goto :goto_75

    .line 284
    :cond_9
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # invokes: Lcom/android/server/lights/MiuiLightsService;->isLightEnable()Z
    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService;->access$1200(Lcom/android/server/lights/MiuiLightsService;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 285
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->updateState(Ljava/lang/String;IILjava/util/List;)V

    .line 286
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # invokes: Lcom/android/server/lights/MiuiLightsService;->doCancelColorfulLightLocked()V
    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService;->access$1900(Lcom/android/server/lights/MiuiLightsService;)V

    .line 287
    return-void

    .line 291
    :cond_1a
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # invokes: Lcom/android/server/lights/MiuiLightsService;->isSceneUncomfort()Z
    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService;->access$1500(Lcom/android/server/lights/MiuiLightsService;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 292
    const-string v0, "LightsService"

    const-string v1, "Scene is uncomfort , lightstyle phone skip"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    return-void

    .line 297
    :cond_2a
    iget v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mLastLightStyle:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_64

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_36

    goto :goto_64

    .line 306
    :cond_36
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    const/4 v2, 0x0

    # invokes: Lcom/android/server/lights/MiuiLightsService;->reportLedEventLocked(IZII)V
    invoke-static {v0, p3, v1, v2, v2}, Lcom/android/server/lights/MiuiLightsService;->access$2000(Lcom/android/server/lights/MiuiLightsService;IZII)V

    .line 308
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # invokes: Lcom/android/server/lights/MiuiLightsService;->doCancelColorfulLightLocked()V
    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService;->access$1900(Lcom/android/server/lights/MiuiLightsService;)V

    .line 309
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    new-instance v1, Lcom/android/server/lights/MiuiLightsService$LightsThread;

    iget-object v2, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    invoke-direct {v1, v2, p4, p3, p2}, Lcom/android/server/lights/MiuiLightsService$LightsThread;-><init>(Lcom/android/server/lights/MiuiLightsService;Ljava/util/List;II)V

    # setter for: Lcom/android/server/lights/MiuiLightsService;->mThread:Lcom/android/server/lights/MiuiLightsService$LightsThread;
    invoke-static {v0, v1}, Lcom/android/server/lights/MiuiLightsService;->access$2102(Lcom/android/server/lights/MiuiLightsService;Lcom/android/server/lights/MiuiLightsService$LightsThread;)Lcom/android/server/lights/MiuiLightsService$LightsThread;

    .line 310
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # getter for: Lcom/android/server/lights/MiuiLightsService;->mThread:Lcom/android/server/lights/MiuiLightsService$LightsThread;
    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService;->access$2100(Lcom/android/server/lights/MiuiLightsService;)Lcom/android/server/lights/MiuiLightsService$LightsThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/lights/MiuiLightsService$LightsThread;->start()V

    .line 311
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->updateState(Ljava/lang/String;IILjava/util/List;)V

    .line 312
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    new-instance v1, Lcom/android/server/lights/LightState;

    invoke-direct {v1, p1, p3}, Lcom/android/server/lights/LightState;-><init>(Ljava/lang/String;I)V

    # invokes: Lcom/android/server/lights/MiuiLightsService;->addToLightCollectionLocked(Lcom/android/server/lights/LightState;)V
    invoke-static {v0, v1}, Lcom/android/server/lights/MiuiLightsService;->access$2200(Lcom/android/server/lights/MiuiLightsService;Lcom/android/server/lights/LightState;)V

    .line 313
    return-void

    .line 298
    :cond_64
    :goto_64
    const/4 v0, -0x1

    if-ne p3, v0, :cond_74

    .line 299
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->updateState(Ljava/lang/String;IILjava/util/List;)V

    .line 300
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # invokes: Lcom/android/server/lights/MiuiLightsService;->doCancelColorfulLightLocked()V
    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService;->access$1900(Lcom/android/server/lights/MiuiLightsService;)V

    .line 301
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # invokes: Lcom/android/server/lights/MiuiLightsService;->recoveryBatteryLight()V
    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService;->access$1800(Lcom/android/server/lights/MiuiLightsService;)V

    .line 303
    :cond_74
    return-void

    .line 280
    :cond_75
    :goto_75
    const-string v0, "LightsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal Argument mLastLightStyle:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " lightStates:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    return-void
.end method

.method setFlashing(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "colorSettingKey"    # Ljava/lang/String;
    .param p2, "freqSettingKey"    # Ljava/lang/String;

    .line 184
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # getter for: Lcom/android/server/lights/MiuiLightsService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService;->access$300(Lcom/android/server/lights/MiuiLightsService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1107000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 186
    .local v0, "defaultColor":I
    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # getter for: Lcom/android/server/lights/MiuiLightsService;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/server/lights/MiuiLightsService;->access$400(Lcom/android/server/lights/MiuiLightsService;)Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, -0x2

    invoke-static {v1, p1, v0, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 189
    .local v1, "color":I
    const/4 v2, 0x1

    const/16 v3, 0x1f4

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->setFlashing(IIII)V

    .line 191
    iget-object v3, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # getter for: Lcom/android/server/lights/MiuiLightsService;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/server/lights/MiuiLightsService;->access$500(Lcom/android/server/lights/MiuiLightsService;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 192
    iget-object v3, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # getter for: Lcom/android/server/lights/MiuiLightsService;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/server/lights/MiuiLightsService;->access$500(Lcom/android/server/lights/MiuiLightsService;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # getter for: Lcom/android/server/lights/MiuiLightsService;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/server/lights/MiuiLightsService;->access$500(Lcom/android/server/lights/MiuiLightsService;)Landroid/os/Handler;

    move-result-object v4

    invoke-static {v4, v2, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x1f4

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 193
    return-void
.end method

.method setLightLocked(IIIII)V
    .registers 16
    .param p1, "color"    # I
    .param p2, "mode"    # I
    .param p3, "onMS"    # I
    .param p4, "offMS"    # I
    .param p5, "brightnessMode"    # I

    .line 217
    iget v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mId:I

    if-nez v0, :cond_8

    .line 218
    invoke-direct/range {p0 .. p5}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->realSetLightLocked(IIIII)V

    .line 219
    return-void

    .line 222
    :cond_8
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # invokes: Lcom/android/server/lights/MiuiLightsService;->isLightEnable()Z
    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService;->access$1200(Lcom/android/server/lights/MiuiLightsService;)Z

    move-result v0

    if-eqz v0, :cond_cf

    iget-boolean v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mDisabled:Z

    if-eqz v0, :cond_16

    goto/16 :goto_cf

    .line 229
    :cond_16
    iget v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mId:I

    const/16 v1, 0x9

    const/4 v2, 0x3

    const/4 v3, 0x4

    if-eq v0, v2, :cond_26

    iget v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mId:I

    if-eq v0, v3, :cond_26

    iget v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mId:I

    if-ne v0, v1, :cond_7f

    .line 233
    :cond_26
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # getter for: Lcom/android/server/lights/MiuiLightsService;->mColorfulLight:Lcom/android/server/lights/MiuiLightsService$LightImpl;
    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService;->access$1300(Lcom/android/server/lights/MiuiLightsService;)Lcom/android/server/lights/MiuiLightsService$LightImpl;

    move-result-object v0

    iget v0, v0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mLastLightStyle:I

    const/4 v4, 0x1

    if-eq v0, v4, :cond_ce

    iget v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mId:I

    if-eq v0, v1, :cond_3f

    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    .line 234
    # invokes: Lcom/android/server/lights/MiuiLightsService;->isMusicLightPlaying()Z
    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService;->access$1400(Lcom/android/server/lights/MiuiLightsService;)Z

    move-result v0

    if-eqz v0, :cond_3f

    goto/16 :goto_ce

    .line 239
    :cond_3f
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # invokes: Lcom/android/server/lights/MiuiLightsService;->isSceneUncomfort()Z
    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService;->access$1500(Lcom/android/server/lights/MiuiLightsService;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 240
    invoke-direct/range {p0 .. p5}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->updateState(IIIII)V

    .line 241
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->realSetLightLocked(IIIII)V

    .line 242
    return-void

    .line 246
    :cond_54
    iget v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mId:I

    if-ne v0, v2, :cond_7f

    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # getter for: Lcom/android/server/lights/MiuiLightsService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;
    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService;->access$1600(Lcom/android/server/lights/MiuiLightsService;)Landroid/os/BatteryManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_7f

    .line 247
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # getter for: Lcom/android/server/lights/MiuiLightsService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;
    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService;->access$1600(Lcom/android/server/lights/MiuiLightsService;)Landroid/os/BatteryManagerInternal;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/BatteryManagerInternal;->getBatteryLevel()I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_6f

    .line 248
    const/4 p1, 0x0

    .line 250
    :cond_6f
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # getter for: Lcom/android/server/lights/MiuiLightsService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;
    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService;->access$1600(Lcom/android/server/lights/MiuiLightsService;)Landroid/os/BatteryManagerInternal;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/BatteryManagerInternal;->isPowered(I)Z

    move-result v0

    if-nez v0, :cond_7f

    if-eqz p1, :cond_7f

    .line 252
    const/4 p1, 0x0

    .line 258
    :cond_7f
    iget v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mId:I

    if-ne v0, v3, :cond_8f

    .line 259
    if-eqz p1, :cond_b4

    iget v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mColor:I

    if-nez v0, :cond_b4

    .line 260
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # invokes: Lcom/android/server/lights/MiuiLightsService;->turnoffBatteryLight()V
    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService;->access$1700(Lcom/android/server/lights/MiuiLightsService;)V

    goto :goto_b4

    .line 262
    :cond_8f
    iget v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mId:I

    if-ne v0, v2, :cond_b4

    .line 263
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    iget-object v0, v0, Lcom/android/server/lights/MiuiLightsService;->mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    aget-object v0, v0, v3

    check-cast v0, Lcom/android/server/lights/MiuiLightsService$LightImpl;

    iget v0, v0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mColor:I

    if-nez v0, :cond_aa

    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    .line 264
    # getter for: Lcom/android/server/lights/MiuiLightsService;->mColorfulLight:Lcom/android/server/lights/MiuiLightsService$LightImpl;
    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService;->access$1300(Lcom/android/server/lights/MiuiLightsService;)Lcom/android/server/lights/MiuiLightsService$LightImpl;

    move-result-object v0

    iget v0, v0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mLastLightStyle:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b4

    .line 265
    :cond_aa
    move-object v4, p0

    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    move v9, p5

    invoke-direct/range {v4 .. v9}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->updateState(IIIII)V

    .line 266
    return-void

    .line 270
    :cond_b4
    :goto_b4
    move-object v4, p0

    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    move v9, p5

    invoke-direct/range {v4 .. v9}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->updateState(IIIII)V

    .line 271
    invoke-direct/range {v4 .. v9}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->realSetLightLocked(IIIII)V

    .line 273
    iget v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mId:I

    if-ne v0, v3, :cond_cd

    iget v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mColor:I

    if-nez v0, :cond_cd

    .line 274
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # invokes: Lcom/android/server/lights/MiuiLightsService;->recoveryBatteryLight()V
    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService;->access$1800(Lcom/android/server/lights/MiuiLightsService;)V

    .line 276
    :cond_cd
    return-void

    .line 235
    :cond_ce
    :goto_ce
    return-void

    .line 223
    :cond_cf
    :goto_cf
    invoke-direct/range {p0 .. p5}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->updateState(IIIII)V

    .line 224
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->realSetLightLocked(IIIII)V

    .line 225
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LightImpl{mDisabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mDisabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mOnMS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mOnMS:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mOffMS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mOffMS:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mBrightnessMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mBrightnessMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mLastColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mLastColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pkg_name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->pkg_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mLastLightStyle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mLastLightStyle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mIsShutDown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mIsShutDown:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method updateLight()V
    .registers 8

    .line 196
    iget v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mId:I

    const/16 v1, 0x8

    if-ne v1, v0, :cond_1d

    .line 197
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # getter for: Lcom/android/server/lights/MiuiLightsService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService;->access$600(Lcom/android/server/lights/MiuiLightsService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 198
    :try_start_d
    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->pkg_name:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mUid:I

    iget v3, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mLastLightStyle:I

    iget-object v4, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->lightStates:Ljava/util/List;

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->setColorfulLightLocked(Ljava/lang/String;IILjava/util/List;)V

    .line 199
    monitor-exit v0

    .line 200
    return-void

    .line 199
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_d .. :try_end_1c} :catchall_1a

    throw v1

    .line 202
    :cond_1d
    const/4 v0, 0x2

    iget v1, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mId:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_39

    .line 203
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # invokes: Lcom/android/server/lights/MiuiLightsService;->isDisableButtonLight()Z
    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService;->access$700(Lcom/android/server/lights/MiuiLightsService;)Z

    move-result v0

    if-nez v0, :cond_36

    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # invokes: Lcom/android/server/lights/MiuiLightsService;->isTurnOnButtonLight()Z
    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService;->access$800(Lcom/android/server/lights/MiuiLightsService;)Z

    move-result v0

    if-nez v0, :cond_34

    goto :goto_36

    :cond_34
    const/4 v2, 0x0

    nop

    :cond_36
    :goto_36
    iput-boolean v2, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mDisabled:Z

    goto :goto_66

    .line 204
    :cond_39
    const/4 v0, 0x3

    iget v1, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mId:I

    if-ne v0, v1, :cond_48

    .line 205
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # invokes: Lcom/android/server/lights/MiuiLightsService;->isTurnOnBatteryLight()Z
    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService;->access$900(Lcom/android/server/lights/MiuiLightsService;)Z

    move-result v0

    xor-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mDisabled:Z

    goto :goto_66

    .line 206
    :cond_48
    const/4 v0, 0x4

    iget v1, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mId:I

    if-ne v0, v1, :cond_57

    .line 207
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # invokes: Lcom/android/server/lights/MiuiLightsService;->isTurnOnNotificationLight()Z
    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService;->access$1000(Lcom/android/server/lights/MiuiLightsService;)Z

    move-result v0

    xor-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mDisabled:Z

    goto :goto_66

    .line 208
    :cond_57
    const/16 v0, 0x9

    iget v1, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mId:I

    if-ne v0, v1, :cond_66

    .line 209
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # invokes: Lcom/android/server/lights/MiuiLightsService;->isTurnOnMusicLight()Z
    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService;->access$1100(Lcom/android/server/lights/MiuiLightsService;)Z

    move-result v0

    xor-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mDisabled:Z

    .line 211
    :cond_66
    :goto_66
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # getter for: Lcom/android/server/lights/MiuiLightsService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService;->access$600(Lcom/android/server/lights/MiuiLightsService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 212
    :try_start_6d
    iget v2, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mColor:I

    iget v3, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mMode:I

    iget v4, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mOnMS:I

    iget v5, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mOffMS:I

    iget v6, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mBrightnessMode:I

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->setLightLocked(IIIII)V

    .line 213
    monitor-exit v0

    .line 214
    return-void

    .line 213
    :catchall_7d
    move-exception v1

    monitor-exit v0
    :try_end_7f
    .catchall {:try_start_6d .. :try_end_7f} :catchall_7d

    throw v1
.end method
