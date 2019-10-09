.class public Lcom/android/server/InputMethodManagerServiceInjector;
.super Ljava/lang/Object;
.source "InputMethodManagerServiceInjector.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enableSystemIMEsIfThereIsNoEnabledIME(Ljava/util/ArrayList;Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;)V
    .registers 11
    .param p1, "settings"    # Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;",
            "Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;",
            ")V"
        }
    .end annotation

    .line 22
    .local p0, "methodList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    sget-boolean v0, Lmiui/os/Build;->IS_CM_CUSTOMIZATION_TEST:Z

    if-nez v0, :cond_54

    if-eqz p0, :cond_54

    if-nez p1, :cond_9

    goto :goto_54

    .line 26
    :cond_9
    nop

    .line 27
    invoke-virtual {p1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodsAndSubtypeListLocked()Ljava/util/List;

    move-result-object v0

    .line 29
    .local v0, "enabledInputMethodsList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    const/4 v1, 0x0

    .line 31
    .local v1, "systemInputMethod":Landroid/view/inputmethod/InputMethodInfo;
    const/4 v2, 0x0

    move-object v3, v1

    move v1, v2

    .local v1, "i":I
    .local v3, "systemInputMethod":Landroid/view/inputmethod/InputMethodInfo;
    :goto_12
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_4a

    .line 32
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodInfo;

    .line 33
    .local v4, "inputMethodInfo":Landroid/view/inputmethod/InputMethodInfo;
    invoke-static {v4}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 34
    move-object v3, v4

    .line 37
    :cond_25
    if-eqz v0, :cond_47

    .line 38
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_47

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    .line 39
    .local v6, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_46

    .line 40
    return-void

    .line 42
    .end local v6    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    :cond_46
    goto :goto_2b

    .line 31
    .end local v4    # "inputMethodInfo":Landroid/view/inputmethod/InputMethodInfo;
    :cond_47
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 46
    .end local v1    # "i":I
    :cond_4a
    if-eqz v3, :cond_53

    .line 47
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->appendAndPutEnabledInputMethodLocked(Ljava/lang/String;Z)V

    .line 49
    :cond_53
    return-void

    .line 23
    .end local v0    # "enabledInputMethodsList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    .end local v3    # "systemInputMethod":Landroid/view/inputmethod/InputMethodInfo;
    :cond_54
    :goto_54
    return-void
.end method

.method public static shouldResetIME(Landroid/content/Intent;[Ljava/lang/String;IZ)Z
    .registers 5
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "packages"    # [Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "doit"    # Z

    .line 56
    const/4 v0, 0x1

    return v0
.end method
