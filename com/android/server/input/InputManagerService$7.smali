.class Lcom/android/server/input/InputManagerService$7;
.super Ljava/lang/Object;
.source "InputManagerService.java"

# interfaces
.implements Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/input/InputManagerService;->getKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Landroid/hardware/input/KeyboardLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mHasSeenDeviceSpecificLayout:Z

.field final synthetic this$0:Lcom/android/server/input/InputManagerService;

.field final synthetic val$enabledLayoutDescriptors:[Ljava/lang/String;

.field final synthetic val$enabledLayouts:Ljava/util/ArrayList;

.field final synthetic val$identifier:Landroid/hardware/input/InputDeviceIdentifier;

.field final synthetic val$potentialLayouts:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/server/input/InputManagerService;[Ljava/lang/String;Ljava/util/ArrayList;Landroid/hardware/input/InputDeviceIdentifier;Ljava/util/ArrayList;)V
    .registers 6
    .param p1, "this$0"    # Lcom/android/server/input/InputManagerService;

    .line 1192
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$7;->this$0:Lcom/android/server/input/InputManagerService;

    iput-object p2, p0, Lcom/android/server/input/InputManagerService$7;->val$enabledLayoutDescriptors:[Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/input/InputManagerService$7;->val$enabledLayouts:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/android/server/input/InputManagerService$7;->val$identifier:Landroid/hardware/input/InputDeviceIdentifier;

    iput-object p5, p0, Lcom/android/server/input/InputManagerService$7;->val$potentialLayouts:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visitKeyboardLayout(Landroid/content/res/Resources;ILandroid/hardware/input/KeyboardLayout;)V
    .registers 9
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "keyboardLayoutResId"    # I
    .param p3, "layout"    # Landroid/hardware/input/KeyboardLayout;

    .line 1200
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$7;->val$enabledLayoutDescriptors:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_1d

    aget-object v3, v0, v2

    .line 1201
    .local v3, "s":Ljava/lang/String;
    if-eqz v3, :cond_1a

    invoke-virtual {p3}, Landroid/hardware/input/KeyboardLayout;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 1202
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$7;->val$enabledLayouts:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1203
    return-void

    .line 1200
    .end local v3    # "s":Ljava/lang/String;
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1210
    :cond_1d
    invoke-virtual {p3}, Landroid/hardware/input/KeyboardLayout;->getVendorId()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/input/InputManagerService$7;->val$identifier:Landroid/hardware/input/InputDeviceIdentifier;

    invoke-virtual {v1}, Landroid/hardware/input/InputDeviceIdentifier;->getVendorId()I

    move-result v1

    if-ne v0, v1, :cond_47

    .line 1211
    invoke-virtual {p3}, Landroid/hardware/input/KeyboardLayout;->getProductId()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/input/InputManagerService$7;->val$identifier:Landroid/hardware/input/InputDeviceIdentifier;

    invoke-virtual {v1}, Landroid/hardware/input/InputDeviceIdentifier;->getProductId()I

    move-result v1

    if-ne v0, v1, :cond_47

    .line 1212
    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService$7;->mHasSeenDeviceSpecificLayout:Z

    if-nez v0, :cond_41

    .line 1213
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/input/InputManagerService$7;->mHasSeenDeviceSpecificLayout:Z

    .line 1214
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$7;->val$potentialLayouts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1216
    :cond_41
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$7;->val$potentialLayouts:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5d

    .line 1217
    :cond_47
    invoke-virtual {p3}, Landroid/hardware/input/KeyboardLayout;->getVendorId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_5d

    invoke-virtual {p3}, Landroid/hardware/input/KeyboardLayout;->getProductId()I

    move-result v0

    if-ne v0, v1, :cond_5d

    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService$7;->mHasSeenDeviceSpecificLayout:Z

    if-nez v0, :cond_5d

    .line 1219
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$7;->val$potentialLayouts:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1221
    :cond_5d
    :goto_5d
    return-void
.end method
