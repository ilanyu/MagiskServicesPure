.class Lcom/android/server/gamepad/BsGamePadWorker$Pos;
.super Ljava/lang/Object;
.source "BsGamePadWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/gamepad/BsGamePadWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Pos"
.end annotation


# instance fields
.field private fromTouch:Z

.field final synthetic this$0:Lcom/android/server/gamepad/BsGamePadWorker;

.field private touchId:I

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>(Lcom/android/server/gamepad/BsGamePadWorker;)V
    .registers 2

    .line 180
    iput-object p1, p0, Lcom/android/server/gamepad/BsGamePadWorker$Pos;->this$0:Lcom/android/server/gamepad/BsGamePadWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    invoke-virtual {p0}, Lcom/android/server/gamepad/BsGamePadWorker$Pos;->reset()V

    .line 182
    return-void
.end method

.method public constructor <init>(Lcom/android/server/gamepad/BsGamePadWorker;FF)V
    .registers 4
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 184
    iput-object p1, p0, Lcom/android/server/gamepad/BsGamePadWorker$Pos;->this$0:Lcom/android/server/gamepad/BsGamePadWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/gamepad/BsGamePadWorker$Pos;->fromTouch:Z

    .line 186
    const/4 p1, -0x1

    iput p1, p0, Lcom/android/server/gamepad/BsGamePadWorker$Pos;->touchId:I

    .line 187
    iput p2, p0, Lcom/android/server/gamepad/BsGamePadWorker$Pos;->x:F

    .line 188
    iput p3, p0, Lcom/android/server/gamepad/BsGamePadWorker$Pos;->y:F

    .line 189
    return-void
.end method

.method static synthetic access$800(Lcom/android/server/gamepad/BsGamePadWorker$Pos;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/gamepad/BsGamePadWorker$Pos;

    .line 174
    iget v0, p0, Lcom/android/server/gamepad/BsGamePadWorker$Pos;->x:F

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/gamepad/BsGamePadWorker$Pos;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/gamepad/BsGamePadWorker$Pos;

    .line 174
    iget v0, p0, Lcom/android/server/gamepad/BsGamePadWorker$Pos;->y:F

    return v0
.end method


# virtual methods
.method public equals(Lcom/android/server/gamepad/BsGamePadWorker$Pos;)Z
    .registers 4
    .param p1, "pos"    # Lcom/android/server/gamepad/BsGamePadWorker$Pos;

    .line 203
    iget v0, p0, Lcom/android/server/gamepad/BsGamePadWorker$Pos;->x:F

    iget v1, p1, Lcom/android/server/gamepad/BsGamePadWorker$Pos;->x:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_18

    iget v0, p0, Lcom/android/server/gamepad/BsGamePadWorker$Pos;->y:F

    iget v1, p1, Lcom/android/server/gamepad/BsGamePadWorker$Pos;->y:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_18

    iget v0, p0, Lcom/android/server/gamepad/BsGamePadWorker$Pos;->touchId:I

    iget v1, p1, Lcom/android/server/gamepad/BsGamePadWorker$Pos;->touchId:I

    if-ne v0, v1, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method

.method public getFromTouch()Z
    .registers 2

    .line 223
    iget-boolean v0, p0, Lcom/android/server/gamepad/BsGamePadWorker$Pos;->fromTouch:Z

    return v0
.end method

.method public getTouchId()I
    .registers 2

    .line 242
    iget v0, p0, Lcom/android/server/gamepad/BsGamePadWorker$Pos;->touchId:I

    return v0
.end method

.method public getX()F
    .registers 2

    .line 234
    iget v0, p0, Lcom/android/server/gamepad/BsGamePadWorker$Pos;->x:F

    return v0
.end method

.method public getY()F
    .registers 2

    .line 238
    iget v0, p0, Lcom/android/server/gamepad/BsGamePadWorker$Pos;->y:F

    return v0
.end method

.method public isValid()Z
    .registers 3

    .line 199
    iget v0, p0, Lcom/android/server/gamepad/BsGamePadWorker$Pos;->touchId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public reset()V
    .registers 2

    .line 192
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/gamepad/BsGamePadWorker$Pos;->fromTouch:Z

    .line 193
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/gamepad/BsGamePadWorker$Pos;->touchId:I

    .line 194
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/server/gamepad/BsGamePadWorker$Pos;->x:F

    .line 195
    iput v0, p0, Lcom/android/server/gamepad/BsGamePadWorker$Pos;->y:F

    .line 196
    return-void
.end method

.method public setFromTouch(Z)V
    .registers 2
    .param p1, "touch"    # Z

    .line 219
    iput-boolean p1, p0, Lcom/android/server/gamepad/BsGamePadWorker$Pos;->fromTouch:Z

    .line 220
    return-void
.end method

.method public setPos(Lcom/android/server/gamepad/BsGamePadWorker$Pos;)V
    .registers 3
    .param p1, "pos"    # Lcom/android/server/gamepad/BsGamePadWorker$Pos;

    .line 227
    invoke-virtual {p1}, Lcom/android/server/gamepad/BsGamePadWorker$Pos;->getFromTouch()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/gamepad/BsGamePadWorker$Pos;->fromTouch:Z

    .line 228
    invoke-virtual {p1}, Lcom/android/server/gamepad/BsGamePadWorker$Pos;->getTouchId()I

    move-result v0

    iput v0, p0, Lcom/android/server/gamepad/BsGamePadWorker$Pos;->touchId:I

    .line 229
    invoke-virtual {p1}, Lcom/android/server/gamepad/BsGamePadWorker$Pos;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/server/gamepad/BsGamePadWorker$Pos;->x:F

    .line 230
    invoke-virtual {p1}, Lcom/android/server/gamepad/BsGamePadWorker$Pos;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/server/gamepad/BsGamePadWorker$Pos;->y:F

    .line 231
    return-void
.end method

.method public setTouchId(I)V
    .registers 2
    .param p1, "touchId"    # I

    .line 215
    iput p1, p0, Lcom/android/server/gamepad/BsGamePadWorker$Pos;->touchId:I

    .line 216
    return-void
.end method

.method public setX(F)V
    .registers 2
    .param p1, "x"    # F

    .line 207
    iput p1, p0, Lcom/android/server/gamepad/BsGamePadWorker$Pos;->x:F

    .line 208
    return-void
.end method

.method public setY(F)V
    .registers 2
    .param p1, "y"    # F

    .line 211
    iput p1, p0, Lcom/android/server/gamepad/BsGamePadWorker$Pos;->y:F

    .line 212
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 246
    const-string v0, "Pos {x = %f, y = %f, touchId = %d}"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/server/gamepad/BsGamePadWorker$Pos;->x:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/server/gamepad/BsGamePadWorker$Pos;->y:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/server/gamepad/BsGamePadWorker$Pos;->touchId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
