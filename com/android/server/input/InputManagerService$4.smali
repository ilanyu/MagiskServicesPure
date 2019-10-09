.class Lcom/android/server/input/InputManagerService$4;
.super Ljava/lang/Object;
.source "InputManagerService.java"

# interfaces
.implements Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/input/InputManagerService;->getDefaultKeyboardLayout(Landroid/view/InputDevice;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/input/InputManagerService;

.field final synthetic val$d:Landroid/view/InputDevice;

.field final synthetic val$layouts:Ljava/util/List;

.field final synthetic val$systemLocale:Ljava/util/Locale;


# direct methods
.method constructor <init>(Lcom/android/server/input/InputManagerService;Landroid/view/InputDevice;Ljava/util/Locale;Ljava/util/List;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/server/input/InputManagerService;

    .line 921
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$4;->this$0:Lcom/android/server/input/InputManagerService;

    iput-object p2, p0, Lcom/android/server/input/InputManagerService$4;->val$d:Landroid/view/InputDevice;

    iput-object p3, p0, Lcom/android/server/input/InputManagerService$4;->val$systemLocale:Ljava/util/Locale;

    iput-object p4, p0, Lcom/android/server/input/InputManagerService$4;->val$layouts:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visitKeyboardLayout(Landroid/content/res/Resources;ILandroid/hardware/input/KeyboardLayout;)V
    .registers 9
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "keyboardLayoutResId"    # I
    .param p3, "layout"    # Landroid/hardware/input/KeyboardLayout;

    .line 927
    invoke-virtual {p3}, Landroid/hardware/input/KeyboardLayout;->getVendorId()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/input/InputManagerService$4;->val$d:Landroid/view/InputDevice;

    invoke-virtual {v1}, Landroid/view/InputDevice;->getVendorId()I

    move-result v1

    if-ne v0, v1, :cond_3a

    .line 928
    invoke-virtual {p3}, Landroid/hardware/input/KeyboardLayout;->getProductId()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/input/InputManagerService$4;->val$d:Landroid/view/InputDevice;

    invoke-virtual {v1}, Landroid/view/InputDevice;->getProductId()I

    move-result v1

    if-eq v0, v1, :cond_19

    goto :goto_3a

    .line 931
    :cond_19
    invoke-virtual {p3}, Landroid/hardware/input/KeyboardLayout;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    .line 932
    .local v0, "locales":Landroid/os/LocaleList;
    invoke-virtual {v0}, Landroid/os/LocaleList;->size()I

    move-result v1

    .line 933
    .local v1, "numLocales":I
    const/4 v2, 0x0

    .local v2, "localeIndex":I
    :goto_22
    if-ge v2, v1, :cond_39

    .line 934
    iget-object v3, p0, Lcom/android/server/input/InputManagerService$4;->val$systemLocale:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v4

    # invokes: Lcom/android/server/input/InputManagerService;->isCompatibleLocale(Ljava/util/Locale;Ljava/util/Locale;)Z
    invoke-static {v3, v4}, Lcom/android/server/input/InputManagerService;->access$400(Ljava/util/Locale;Ljava/util/Locale;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 935
    iget-object v3, p0, Lcom/android/server/input/InputManagerService$4;->val$layouts:Ljava/util/List;

    invoke-interface {v3, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 936
    goto :goto_39

    .line 933
    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 939
    .end local v2    # "localeIndex":I
    :cond_39
    :goto_39
    return-void

    .line 929
    .end local v0    # "locales":Landroid/os/LocaleList;
    .end local v1    # "numLocales":I
    :cond_3a
    :goto_3a
    return-void
.end method
