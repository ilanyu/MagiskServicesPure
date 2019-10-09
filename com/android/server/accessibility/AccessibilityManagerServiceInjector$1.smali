.class Lcom/android/server/accessibility/AccessibilityManagerServiceInjector$1;
.super Landroid/database/ContentObserver;
.source "AccessibilityManagerServiceInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerServiceInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .registers 2
    .param p1, "x0"    # Landroid/os/Handler;

    .line 16
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 2
    .param p1, "selfChange"    # Z

    .line 19
    # invokes: Lcom/android/server/accessibility/AccessibilityManagerServiceInjector;->onChanged()V
    invoke-static {}, Lcom/android/server/accessibility/AccessibilityManagerServiceInjector;->access$000()V

    .line 20
    return-void
.end method
