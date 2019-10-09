.class public Lcom/android/server/wm/utils/CoordinateTransforms;
.super Ljava/lang/Object;
.source "CoordinateTransforms.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static transformPhysicalToLogicalCoordinates(IIILandroid/graphics/Matrix;)V
    .registers 7
    .param p0, "rotation"    # I
    .param p1, "physicalWidth"    # I
    .param p2, "physicalHeight"    # I
    .param p3, "out"    # Landroid/graphics/Matrix;

    .line 42
    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_40

    .line 59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown rotation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :pswitch_1b
    const/high16 v1, 0x42b40000    # 90.0f

    invoke-virtual {p3, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 56
    int-to-float v1, p2

    invoke-virtual {p3, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 57
    goto :goto_3e

    .line 51
    :pswitch_25
    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {p3, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 52
    int-to-float v0, p1

    int-to-float v1, p2

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 53
    goto :goto_3e

    .line 47
    :pswitch_30
    const/high16 v1, 0x43870000    # 270.0f

    invoke-virtual {p3, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 48
    int-to-float v1, p1

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 49
    goto :goto_3e

    .line 44
    :pswitch_3a
    invoke-virtual {p3}, Landroid/graphics/Matrix;->reset()V

    .line 45
    nop

    .line 61
    :goto_3e
    return-void

    nop

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_3a
        :pswitch_30
        :pswitch_25
        :pswitch_1b
    .end packed-switch
.end method
