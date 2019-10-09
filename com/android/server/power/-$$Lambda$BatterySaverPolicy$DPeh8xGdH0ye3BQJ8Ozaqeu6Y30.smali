.class public final synthetic Lcom/android/server/power/-$$Lambda$BatterySaverPolicy$DPeh8xGdH0ye3BQJ8Ozaqeu6Y30;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;


# instance fields
.field private final synthetic f$0:Lcom/android/server/power/BatterySaverPolicy;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/BatterySaverPolicy;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/-$$Lambda$BatterySaverPolicy$DPeh8xGdH0ye3BQJ8Ozaqeu6Y30;->f$0:Lcom/android/server/power/BatterySaverPolicy;

    return-void
.end method


# virtual methods
.method public final onAccessibilityStateChanged(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/power/-$$Lambda$BatterySaverPolicy$DPeh8xGdH0ye3BQJ8Ozaqeu6Y30;->f$0:Lcom/android/server/power/BatterySaverPolicy;

    invoke-static {v0, p1}, Lcom/android/server/power/BatterySaverPolicy;->lambda$systemReady$0(Lcom/android/server/power/BatterySaverPolicy;Z)V

    return-void
.end method
