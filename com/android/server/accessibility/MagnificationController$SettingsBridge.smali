.class public Lcom/android/server/accessibility/MagnificationController$SettingsBridge;
.super Ljava/lang/Object;
.source "MagnificationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/MagnificationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SettingsBridge"
.end annotation


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .registers 2
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;

    .line 972
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 973
    iput-object p1, p0, Lcom/android/server/accessibility/MagnificationController$SettingsBridge;->mContentResolver:Landroid/content/ContentResolver;

    .line 974
    return-void
.end method


# virtual methods
.method public getMagnificationScale(I)F
    .registers 5
    .param p1, "userId"    # I

    .line 982
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$SettingsBridge;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "accessibility_display_magnification_scale"

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$Secure;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    return v0
.end method

.method public putMagnificationScale(FI)V
    .registers 5
    .param p1, "value"    # F
    .param p2, "userId"    # I

    .line 977
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$SettingsBridge;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "accessibility_display_magnification_scale"

    invoke-static {v0, v1, p1, p2}, Landroid/provider/Settings$Secure;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    .line 979
    return-void
.end method
