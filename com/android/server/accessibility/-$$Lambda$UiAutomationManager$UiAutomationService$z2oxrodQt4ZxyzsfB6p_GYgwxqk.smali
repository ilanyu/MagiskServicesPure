.class public final synthetic Lcom/android/server/accessibility/-$$Lambda$UiAutomationManager$UiAutomationService$z2oxrodQt4ZxyzsfB6p_GYgwxqk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/-$$Lambda$UiAutomationManager$UiAutomationService$z2oxrodQt4ZxyzsfB6p_GYgwxqk;->f$0:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/accessibility/-$$Lambda$UiAutomationManager$UiAutomationService$z2oxrodQt4ZxyzsfB6p_GYgwxqk;->f$0:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    invoke-static {v0}, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->lambda$connectServiceUnknownThread$0(Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;)V

    return-void
.end method
