.class abstract Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;
.super Landroid/content/pm/IPinItemRequest$Stub;
.source "ShortcutRequestPinProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ShortcutRequestPinProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "PinItemRequestInner"
.end annotation


# instance fields
.field private mAccepted:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mLauncherUid:I

.field protected final mProcessor:Lcom/android/server/pm/ShortcutRequestPinProcessor;

.field private final mResultIntent:Landroid/content/IntentSender;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/ShortcutRequestPinProcessor;Landroid/content/IntentSender;I)V
    .registers 4
    .param p1, "processor"    # Lcom/android/server/pm/ShortcutRequestPinProcessor;
    .param p2, "resultIntent"    # Landroid/content/IntentSender;
    .param p3, "launcherUid"    # I

    .line 61
    invoke-direct {p0}, Landroid/content/pm/IPinItemRequest$Stub;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;->mProcessor:Lcom/android/server/pm/ShortcutRequestPinProcessor;

    .line 63
    iput-object p2, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;->mResultIntent:Landroid/content/IntentSender;

    .line 64
    iput p3, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;->mLauncherUid:I

    .line 65
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/ShortcutRequestPinProcessor;Landroid/content/IntentSender;ILcom/android/server/pm/ShortcutRequestPinProcessor$1;)V
    .registers 5
    .param p1, "x0"    # Lcom/android/server/pm/ShortcutRequestPinProcessor;
    .param p2, "x1"    # Landroid/content/IntentSender;
    .param p3, "x2"    # I
    .param p4, "x3"    # Lcom/android/server/pm/ShortcutRequestPinProcessor$1;

    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;-><init>(Lcom/android/server/pm/ShortcutRequestPinProcessor;Landroid/content/IntentSender;I)V

    return-void
.end method

.method private isCallerValid()Z
    .registers 3

    .line 87
    iget-object v0, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;->mProcessor:Lcom/android/server/pm/ShortcutRequestPinProcessor;

    iget v1, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;->mLauncherUid:I

    invoke-virtual {v0, v1}, Lcom/android/server/pm/ShortcutRequestPinProcessor;->isCallerUid(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public accept(Landroid/os/Bundle;)Z
    .registers 6
    .param p1, "options"    # Landroid/os/Bundle;

    .line 109
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;->isCallerValid()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 112
    const/4 v0, 0x0

    .line 113
    .local v0, "extras":Landroid/content/Intent;
    if-eqz p1, :cond_21

    .line 115
    :try_start_9
    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    .line 116
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_15} :catch_17

    move-object v0, v1

    .line 119
    goto :goto_21

    .line 117
    :catch_17
    move-exception v1

    .line 118
    .local v1, "e":Ljava/lang/RuntimeException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "options cannot be unparceled"

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 121
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_21
    :goto_21
    monitor-enter p0

    .line 122
    :try_start_22
    iget-boolean v1, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;->mAccepted:Z

    if-nez v1, :cond_3a

    .line 125
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;->mAccepted:Z

    .line 126
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_22 .. :try_end_2a} :catchall_42

    .line 129
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;->tryAccept()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 130
    iget-object v2, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;->mProcessor:Lcom/android/server/pm/ShortcutRequestPinProcessor;

    iget-object v3, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;->mResultIntent:Landroid/content/IntentSender;

    invoke-virtual {v2, v3, v0}, Lcom/android/server/pm/ShortcutRequestPinProcessor;->sendResultIntent(Landroid/content/IntentSender;Landroid/content/Intent;)V

    .line 131
    return v1

    .line 133
    :cond_38
    const/4 v1, 0x0

    return v1

    .line 123
    :cond_3a
    :try_start_3a
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "accept() called already"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 126
    :catchall_42
    move-exception v1

    monitor-exit p0
    :try_end_44
    .catchall {:try_start_3a .. :try_end_44} :catchall_42

    throw v1

    .line 110
    .end local v0    # "extras":Landroid/content/Intent;
    :cond_45
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Calling uid mismatch"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAppWidgetProviderInfo()Landroid/appwidget/AppWidgetProviderInfo;
    .registers 2

    .line 74
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 2

    .line 79
    const/4 v0, 0x0

    return-object v0
.end method

.method public getShortcutInfo()Landroid/content/pm/ShortcutInfo;
    .registers 2

    .line 69
    const/4 v0, 0x0

    return-object v0
.end method

.method public isValid()Z
    .registers 2

    .line 92
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;->isCallerValid()Z

    move-result v0

    if-nez v0, :cond_8

    .line 93
    const/4 v0, 0x0

    return v0

    .line 97
    :cond_8
    monitor-enter p0

    .line 98
    :try_start_9
    iget-boolean v0, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;->mAccepted:Z

    xor-int/lit8 v0, v0, 0x1

    monitor-exit p0

    return v0

    .line 99
    :catchall_f
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_f

    throw v0
.end method

.method protected tryAccept()Z
    .registers 2

    .line 138
    const/4 v0, 0x1

    return v0
.end method
