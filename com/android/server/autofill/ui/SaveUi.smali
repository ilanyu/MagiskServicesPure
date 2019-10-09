.class final Lcom/android/server/autofill/ui/SaveUi;
.super Ljava/lang/Object;
.source "SaveUi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/autofill/ui/SaveUi$OneTimeListener;,
        Lcom/android/server/autofill/ui/SaveUi$OnSaveListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AutofillSaveUi"

.field private static final THEME_ID:I = 0x10303ba


# instance fields
.field private final mCompatMode:Z

.field private final mComponentName:Landroid/content/ComponentName;

.field private mDestroyed:Z

.field private final mDialog:Landroid/app/Dialog;

.field private final mHandler:Landroid/os/Handler;

.field private final mListener:Lcom/android/server/autofill/ui/SaveUi$OneTimeListener;

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private final mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

.field private final mPendingUi:Lcom/android/server/autofill/ui/PendingUi;

.field private final mServicePackageName:Ljava/lang/String;

.field private final mSubTitle:Ljava/lang/CharSequence;

.field private final mTitle:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/autofill/ui/PendingUi;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/content/ComponentName;Landroid/service/autofill/SaveInfo;Landroid/service/autofill/ValueFinder;Lcom/android/server/autofill/ui/OverlayControl;Lcom/android/server/autofill/ui/SaveUi$OnSaveListener;Z)V
    .registers 30
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pendingUi"    # Lcom/android/server/autofill/ui/PendingUi;
    .param p3, "serviceLabel"    # Ljava/lang/CharSequence;
    .param p4, "serviceIcon"    # Landroid/graphics/drawable/Drawable;
    .param p5, "servicePackageName"    # Ljava/lang/String;
    .param p6, "componentName"    # Landroid/content/ComponentName;
    .param p7, "info"    # Landroid/service/autofill/SaveInfo;
    .param p8, "valueFinder"    # Landroid/service/autofill/ValueFinder;
    .param p9, "overlayControl"    # Lcom/android/server/autofill/ui/OverlayControl;
    .param p10, "listener"    # Lcom/android/server/autofill/ui/SaveUi$OnSaveListener;
    .param p11, "compatMode"    # Z

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p5

    move-object/from16 v4, p7

    .line 148
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 125
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v5

    iput-object v5, v0, Lcom/android/server/autofill/ui/SaveUi;->mHandler:Landroid/os/Handler;

    .line 126
    new-instance v5, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v5}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v5, v0, Lcom/android/server/autofill/ui/SaveUi;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 149
    move-object/from16 v5, p2

    iput-object v5, v0, Lcom/android/server/autofill/ui/SaveUi;->mPendingUi:Lcom/android/server/autofill/ui/PendingUi;

    .line 150
    new-instance v6, Lcom/android/server/autofill/ui/SaveUi$OneTimeListener;

    move-object/from16 v7, p10

    invoke-direct {v6, v0, v7}, Lcom/android/server/autofill/ui/SaveUi$OneTimeListener;-><init>(Lcom/android/server/autofill/ui/SaveUi;Lcom/android/server/autofill/ui/SaveUi$OnSaveListener;)V

    iput-object v6, v0, Lcom/android/server/autofill/ui/SaveUi;->mListener:Lcom/android/server/autofill/ui/SaveUi$OneTimeListener;

    .line 151
    move-object/from16 v6, p9

    iput-object v6, v0, Lcom/android/server/autofill/ui/SaveUi;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    .line 152
    iput-object v3, v0, Lcom/android/server/autofill/ui/SaveUi;->mServicePackageName:Ljava/lang/String;

    .line 153
    move-object/from16 v8, p6

    iput-object v8, v0, Lcom/android/server/autofill/ui/SaveUi;->mComponentName:Landroid/content/ComponentName;

    .line 154
    move/from16 v9, p11

    iput-boolean v9, v0, Lcom/android/server/autofill/ui/SaveUi;->mCompatMode:Z

    .line 157
    const-string v10, "com.miui.contentcatcher"

    invoke-static {v3, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_59

    .line 158
    const-string v10, "Miui Autofill"

    iput-object v10, v0, Lcom/android/server/autofill/ui/SaveUi;->mSubTitle:Ljava/lang/CharSequence;

    iput-object v10, v0, Lcom/android/server/autofill/ui/SaveUi;->mTitle:Ljava/lang/CharSequence;

    .line 159
    iget-object v10, v0, Lcom/android/server/autofill/ui/SaveUi;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    new-instance v11, Lcom/android/server/autofill/ui/-$$Lambda$SaveUi$azJcJ0vVLFuLCVYP2r9Caf9OOb8;

    invoke-direct {v11, v0, v4}, Lcom/android/server/autofill/ui/-$$Lambda$SaveUi$azJcJ0vVLFuLCVYP2r9Caf9OOb8;-><init>(Lcom/android/server/autofill/ui/SaveUi;Landroid/service/autofill/SaveInfo;)V

    new-instance v12, Lcom/android/server/autofill/ui/-$$Lambda$SaveUi$pQVDT137nwCkL2fMl4eobrFvuFM;

    invoke-direct {v12, v0}, Lcom/android/server/autofill/ui/-$$Lambda$SaveUi$pQVDT137nwCkL2fMl4eobrFvuFM;-><init>(Lcom/android/server/autofill/ui/SaveUi;)V

    new-instance v13, Lcom/android/server/autofill/ui/-$$Lambda$SaveUi$ckPlzqJfB_ohleAkb5RXKU7mFY8;

    invoke-direct {v13, v0}, Lcom/android/server/autofill/ui/-$$Lambda$SaveUi$ckPlzqJfB_ohleAkb5RXKU7mFY8;-><init>(Lcom/android/server/autofill/ui/SaveUi;)V

    invoke-static {v1, v10, v11, v12, v13}, Lcom/android/server/autofill/ui/SaveUiInjector;->showDialog(Landroid/content/Context;Lcom/android/server/autofill/ui/OverlayControl;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;

    move-result-object v10

    iput-object v10, v0, Lcom/android/server/autofill/ui/SaveUi;->mDialog:Landroid/app/Dialog;

    .line 163
    return-void

    .line 166
    :cond_59
    new-instance v10, Landroid/view/ContextThemeWrapper;

    const v11, 0x10303ba

    invoke-direct {v10, v1, v11}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object v1, v10

    .line 167
    .end local p1    # "context":Landroid/content/Context;
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    .line 168
    .local v10, "inflater":Landroid/view/LayoutInflater;
    const v12, 0x109003f

    const/4 v13, 0x0

    invoke-virtual {v10, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 170
    .local v12, "view":Landroid/view/View;
    const v14, 0x10201c6

    invoke-virtual {v12, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 172
    .local v14, "titleView":Landroid/widget/TextView;
    new-instance v15, Landroid/util/ArraySet;

    const/4 v11, 0x3

    invoke-direct {v15, v11}, Landroid/util/ArraySet;-><init>(I)V

    .line 173
    .local v15, "types":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual/range {p7 .. p7}, Landroid/service/autofill/SaveInfo;->getType()I

    move-result v13

    .line 175
    .local v13, "type":I
    and-int/lit8 v16, v13, 0x1

    if-eqz v16, :cond_8f

    .line 176
    const v11, 0x10400dc

    invoke-virtual {v1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v15, v11}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 178
    :cond_8f
    and-int/lit8 v11, v13, 0x2

    if-eqz v11, :cond_9d

    .line 179
    const v11, 0x10400d9

    invoke-virtual {v1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v15, v11}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 181
    :cond_9d
    and-int/lit8 v11, v13, 0x4

    if-eqz v11, :cond_ab

    .line 182
    const v11, 0x10400da

    invoke-virtual {v1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v15, v11}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 184
    :cond_ab
    and-int/lit8 v11, v13, 0x8

    if-eqz v11, :cond_b9

    .line 185
    const v11, 0x10400dd

    invoke-virtual {v1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v15, v11}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 187
    :cond_b9
    and-int/lit8 v11, v13, 0x10

    if-eqz v11, :cond_c7

    .line 188
    const v11, 0x10400db

    invoke-virtual {v1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v15, v11}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 191
    :cond_c7
    invoke-virtual {v15}, Landroid/util/ArraySet;->size()I

    move-result v11

    const/4 v3, 0x0

    packed-switch v11, :pswitch_data_250

    .line 206
    move v11, v3

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/Object;

    aput-object p3, v5, v11

    .line 207
    const v3, 0x10400d5

    invoke-virtual {v1, v3, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 206
    invoke-static {v3, v11}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/autofill/ui/SaveUi;->mTitle:Ljava/lang/CharSequence;

    goto :goto_14c

    .line 201
    :pswitch_e3
    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    .line 202
    invoke-virtual {v15, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    aput-object v16, v11, v3

    const/4 v3, 0x1

    invoke-virtual {v15, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    aput-object v16, v11, v3

    const/4 v3, 0x2

    invoke-virtual {v15, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    aput-object v16, v11, v3

    const/4 v3, 0x3

    aput-object p3, v11, v3

    .line 201
    const v3, 0x10400d7

    invoke-virtual {v1, v3, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v11, 0x0

    invoke-static {v3, v11}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/autofill/ui/SaveUi;->mTitle:Ljava/lang/CharSequence;

    .line 203
    goto :goto_14c

    .line 197
    :pswitch_10c
    move v11, v3

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 198
    const/4 v11, 0x0

    invoke-virtual {v15, v11}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    aput-object v16, v3, v11

    const/4 v11, 0x1

    invoke-virtual {v15, v11}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    aput-object v16, v3, v11

    const/4 v11, 0x2

    aput-object p3, v3, v11

    .line 197
    const v11, 0x10400d6

    invoke-virtual {v1, v11, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v11, 0x0

    invoke-static {v3, v11}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/autofill/ui/SaveUi;->mTitle:Ljava/lang/CharSequence;

    .line 199
    goto :goto_14c

    .line 193
    :pswitch_130
    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    .line 194
    const/4 v3, 0x0

    invoke-virtual {v15, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    aput-object v16, v11, v3

    const/4 v3, 0x1

    aput-object p3, v11, v3

    .line 193
    const v3, 0x10400d8

    invoke-virtual {v1, v3, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v11, 0x0

    invoke-static {v3, v11}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/autofill/ui/SaveUi;->mTitle:Ljava/lang/CharSequence;

    .line 195
    nop

    .line 209
    :goto_14c
    iget-object v3, v0, Lcom/android/server/autofill/ui/SaveUi;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    move-object/from16 v3, p4

    invoke-direct {v0, v1, v12, v3}, Lcom/android/server/autofill/ui/SaveUi;->setServiceIcon(Landroid/content/Context;Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 213
    nop

    .line 214
    move-object/from16 v5, p8

    invoke-direct {v0, v1, v12, v5, v4}, Lcom/android/server/autofill/ui/SaveUi;->applyCustomDescription(Landroid/content/Context;Landroid/view/View;Landroid/service/autofill/ValueFinder;Landroid/service/autofill/SaveInfo;)Z

    move-result v11

    .line 215
    .local v11, "hasCustomDescription":Z
    if-eqz v11, :cond_16f

    .line 216
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/server/autofill/ui/SaveUi;->mSubTitle:Ljava/lang/CharSequence;

    .line 217
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_1c6

    const-string v2, "AutofillSaveUi"

    const-string/jumbo v3, "on constructor: applied custom description"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c6

    .line 219
    :cond_16f
    invoke-virtual/range {p7 .. p7}, Landroid/service/autofill/SaveInfo;->getDescription()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/autofill/ui/SaveUi;->mSubTitle:Ljava/lang/CharSequence;

    .line 220
    iget-object v2, v0, Lcom/android/server/autofill/ui/SaveUi;->mSubTitle:Ljava/lang/CharSequence;

    if-eqz v2, :cond_19f

    .line 221
    const/16 v2, 0x46b

    invoke-direct {v0, v2, v13}, Lcom/android/server/autofill/ui/SaveUi;->writeLog(II)V

    .line 222
    const v2, 0x10201c3

    .line 223
    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 224
    .local v2, "subtitleContainer":Landroid/view/ViewGroup;
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 225
    .local v3, "subtitleView":Landroid/widget/TextView;
    iget-object v5, v0, Lcom/android/server/autofill/ui/SaveUi;->mSubTitle:Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x1

    invoke-direct {v5, v7, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 229
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 231
    .end local v2    # "subtitleContainer":Landroid/view/ViewGroup;
    .end local v3    # "subtitleView":Landroid/widget/TextView;
    :cond_19f
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_1c6

    const-string v2, "AutofillSaveUi"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "on constructor: title="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/autofill/ui/SaveUi;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", subTitle="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/autofill/ui/SaveUi;->mSubTitle:Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_1c6
    :goto_1c6
    const v2, 0x10201c5

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 235
    .local v2, "noButton":Landroid/widget/TextView;
    invoke-virtual/range {p7 .. p7}, Landroid/service/autofill/SaveInfo;->getNegativeActionStyle()I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_1dd

    .line 236
    const v3, 0x1040603

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1e3

    .line 238
    :cond_1dd
    const v3, 0x10400d4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 240
    :goto_1e3
    new-instance v3, Lcom/android/server/autofill/ui/-$$Lambda$SaveUi$DF_MH50KQ7DYLUYxGcfdYg35tT8;

    invoke-direct {v3, v0, v4}, Lcom/android/server/autofill/ui/-$$Lambda$SaveUi$DF_MH50KQ7DYLUYxGcfdYg35tT8;-><init>(Lcom/android/server/autofill/ui/SaveUi;Landroid/service/autofill/SaveInfo;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    const v3, 0x10201c7

    invoke-virtual {v12, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 243
    .local v3, "yesButton":Landroid/view/View;
    new-instance v5, Lcom/android/server/autofill/ui/-$$Lambda$SaveUi$zOQAB5X_OrKM63EEqas3prb_rlE;

    invoke-direct {v5, v0}, Lcom/android/server/autofill/ui/-$$Lambda$SaveUi$zOQAB5X_OrKM63EEqas3prb_rlE;-><init>(Lcom/android/server/autofill/ui/SaveUi;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    new-instance v5, Landroid/app/Dialog;

    const v6, 0x10303ba

    invoke-direct {v5, v1, v6}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v5, v0, Lcom/android/server/autofill/ui/SaveUi;->mDialog:Landroid/app/Dialog;

    .line 246
    iget-object v5, v0, Lcom/android/server/autofill/ui/SaveUi;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v5, v12}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 250
    iget-object v5, v0, Lcom/android/server/autofill/ui/SaveUi;->mDialog:Landroid/app/Dialog;

    new-instance v6, Lcom/android/server/autofill/ui/-$$Lambda$SaveUi$fCBYjrDHSMBFiyTCtKa27mT7eHQ;

    invoke-direct {v6, v0}, Lcom/android/server/autofill/ui/-$$Lambda$SaveUi$fCBYjrDHSMBFiyTCtKa27mT7eHQ;-><init>(Lcom/android/server/autofill/ui/SaveUi;)V

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 252
    iget-object v5, v0, Lcom/android/server/autofill/ui/SaveUi;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    .line 253
    .local v5, "window":Landroid/view/Window;
    const/16 v6, 0x7f6

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 254
    const v6, 0x60020

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    .line 257
    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 258
    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 259
    const/16 v6, 0x51

    invoke-virtual {v5, v6}, Landroid/view/Window;->setGravity(I)V

    .line 260
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/Window;->setCloseOnTouchOutside(Z)V

    .line 261
    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    .line 262
    .local v6, "params":Landroid/view/WindowManager$LayoutParams;
    const/4 v7, -0x1

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 263
    const v7, 0x10400d3

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    .line 264
    const v7, 0x103030c

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 266
    invoke-direct/range {p0 .. p0}, Lcom/android/server/autofill/ui/SaveUi;->show()V

    .line 267
    return-void

    :pswitch_data_250
    .packed-switch 0x1
        :pswitch_130
        :pswitch_10c
        :pswitch_e3
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/android/server/autofill/ui/SaveUi;II)Landroid/metrics/LogMaker;
    .registers 4
    .param p0, "x0"    # Lcom/android/server/autofill/ui/SaveUi;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/android/server/autofill/ui/SaveUi;->newLogMaker(II)Landroid/metrics/LogMaker;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Landroid/app/PendingIntent;Landroid/content/Intent;)Z
    .registers 3
    .param p0, "x0"    # Landroid/app/PendingIntent;
    .param p1, "x1"    # Landroid/content/Intent;

    .line 72
    invoke-static {p0, p1}, Lcom/android/server/autofill/ui/SaveUi;->isValidLink(Landroid/app/PendingIntent;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/autofill/ui/SaveUi;)Lcom/android/internal/logging/MetricsLogger;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/autofill/ui/SaveUi;

    .line 72
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/autofill/ui/SaveUi;)Lcom/android/server/autofill/ui/PendingUi;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/autofill/ui/SaveUi;

    .line 72
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mPendingUi:Lcom/android/server/autofill/ui/PendingUi;

    return-object v0
.end method

.method private applyCustomDescription(Landroid/content/Context;Landroid/view/View;Landroid/service/autofill/ValueFinder;Landroid/service/autofill/SaveInfo;)Z
    .registers 26
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "saveUiView"    # Landroid/view/View;
    .param p3, "valueFinder"    # Landroid/service/autofill/ValueFinder;
    .param p4, "info"    # Landroid/service/autofill/SaveInfo;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    .line 271
    invoke-virtual/range {p4 .. p4}, Landroid/service/autofill/SaveInfo;->getCustomDescription()Landroid/service/autofill/CustomDescription;

    move-result-object v4

    .line 272
    .local v4, "customDescription":Landroid/service/autofill/CustomDescription;
    const/4 v5, 0x0

    if-nez v4, :cond_e

    .line 273
    return v5

    .line 275
    :cond_e
    invoke-virtual/range {p4 .. p4}, Landroid/service/autofill/SaveInfo;->getType()I

    move-result v6

    .line 276
    .local v6, "type":I
    const/16 v0, 0x469

    invoke-direct {v1, v0, v6}, Lcom/android/server/autofill/ui/SaveUi;->writeLog(II)V

    .line 278
    invoke-virtual {v4}, Landroid/service/autofill/CustomDescription;->getPresentation()Landroid/widget/RemoteViews;

    move-result-object v7

    .line 279
    .local v7, "template":Landroid/widget/RemoteViews;
    if-nez v7, :cond_25

    .line 280
    const-string v0, "AutofillSaveUi"

    const-string v8, "No remote view on custom description"

    invoke-static {v0, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    return v5

    .line 285
    :cond_25
    nop

    .line 286
    invoke-virtual {v4}, Landroid/service/autofill/CustomDescription;->getTransformations()Ljava/util/ArrayList;

    move-result-object v8

    .line 287
    .local v8, "transformations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Landroid/service/autofill/InternalTransformation;>;>;"
    if-eqz v8, :cond_3a

    .line 288
    invoke-static {v3, v7, v8}, Landroid/service/autofill/InternalTransformation;->batchApply(Landroid/service/autofill/ValueFinder;Landroid/widget/RemoteViews;Ljava/util/ArrayList;)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 289
    const-string v0, "AutofillSaveUi"

    const-string v9, "could not apply main transformations on custom description"

    invoke-static {v0, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    return v5

    .line 294
    :cond_3a
    new-instance v0, Lcom/android/server/autofill/ui/SaveUi$1;

    invoke-direct {v0, v1, v6}, Lcom/android/server/autofill/ui/SaveUi$1;-><init>(Lcom/android/server/autofill/ui/SaveUi;I)V

    move-object v9, v0

    .line 332
    .local v9, "handler":Landroid/widget/RemoteViews$OnClickHandler;
    const v0, 0x10303ba

    :try_start_43
    invoke-virtual {v7, v0}, Landroid/widget/RemoteViews;->setApplyTheme(I)V

    .line 333
    const/4 v0, 0x0

    invoke-virtual {v7, v2, v0, v9}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;

    move-result-object v0

    .line 336
    .local v0, "customSubtitleView":Landroid/view/View;
    nop

    .line 337
    invoke-virtual {v4}, Landroid/service/autofill/CustomDescription;->getUpdates()Ljava/util/ArrayList;

    move-result-object v10

    .line 338
    .local v10, "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Landroid/service/autofill/InternalValidator;Landroid/service/autofill/BatchUpdates;>;>;"
    if-eqz v10, :cond_15d

    .line 339
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 340
    .local v11, "size":I
    sget-boolean v12, Lcom/android/server/autofill/Helper;->sDebug:Z
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_58} :catch_177

    if-eqz v12, :cond_7f

    :try_start_5a
    const-string v12, "AutofillSaveUi"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "custom description has "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " batch updates"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_75} :catch_76

    goto :goto_7f

    .line 380
    .end local v0    # "customSubtitleView":Landroid/view/View;
    .end local v10    # "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Landroid/service/autofill/InternalValidator;Landroid/service/autofill/BatchUpdates;>;>;"
    .end local v11    # "size":I
    :catch_76
    move-exception v0

    move-object/from16 v18, v4

    move/from16 v19, v6

    .end local v4    # "customDescription":Landroid/service/autofill/CustomDescription;
    .end local v6    # "type":I
    .local v18, "customDescription":Landroid/service/autofill/CustomDescription;
    .local v19, "type":I
    :goto_7b
    move-object/from16 v4, p2

    goto/16 :goto_17e

    .line 341
    .end local v18    # "customDescription":Landroid/service/autofill/CustomDescription;
    .end local v19    # "type":I
    .restart local v0    # "customSubtitleView":Landroid/view/View;
    .restart local v4    # "customDescription":Landroid/service/autofill/CustomDescription;
    .restart local v6    # "type":I
    .restart local v10    # "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Landroid/service/autofill/InternalValidator;Landroid/service/autofill/BatchUpdates;>;>;"
    .restart local v11    # "size":I
    :cond_7f
    :goto_7f
    move v12, v5

    .local v12, "i":I
    :goto_80
    if-ge v12, v11, :cond_15d

    .line 342
    :try_start_82
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/Pair;

    .line 343
    .local v13, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/service/autofill/InternalValidator;Landroid/service/autofill/BatchUpdates;>;"
    iget-object v14, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v14, Landroid/service/autofill/InternalValidator;

    .line 344
    .local v14, "condition":Landroid/service/autofill/InternalValidator;
    if-eqz v14, :cond_131

    invoke-virtual {v14, v3}, Landroid/service/autofill/InternalValidator;->isValid(Landroid/service/autofill/ValueFinder;)Z

    move-result v15

    if-nez v15, :cond_9a

    .line 345
    move-object/from16 v18, v4

    move/from16 v19, v6

    goto/16 :goto_135

    .line 348
    :cond_9a
    iget-object v15, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v15, Landroid/service/autofill/BatchUpdates;

    .line 350
    .local v15, "batchUpdates":Landroid/service/autofill/BatchUpdates;
    invoke-virtual {v15}, Landroid/service/autofill/BatchUpdates;->getUpdates()Landroid/widget/RemoteViews;

    move-result-object v16

    move-object/from16 v17, v16

    .line 351
    .local v17, "templateUpdates":Landroid/widget/RemoteViews;
    move-object/from16 v5, v17

    if-eqz v5, :cond_d6

    .line 352
    .end local v17    # "templateUpdates":Landroid/widget/RemoteViews;
    .local v5, "templateUpdates":Landroid/widget/RemoteViews;
    sget-boolean v16, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v16, :cond_ce

    const-string v1, "AutofillSaveUi"
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_ae} :catch_177

    move-object/from16 v18, v4

    :try_start_b0
    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4    # "customDescription":Landroid/service/autofill/CustomDescription;
    .restart local v18    # "customDescription":Landroid/service/autofill/CustomDescription;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_b5} :catch_c7

    move/from16 v19, v6

    :try_start_b7
    const-string v6, "Applying template updates for batch update #"

    .end local v6    # "type":I
    .restart local v19    # "type":I
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d2

    .line 380
    .end local v0    # "customSubtitleView":Landroid/view/View;
    .end local v5    # "templateUpdates":Landroid/widget/RemoteViews;
    .end local v10    # "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Landroid/service/autofill/InternalValidator;Landroid/service/autofill/BatchUpdates;>;>;"
    .end local v11    # "size":I
    .end local v12    # "i":I
    .end local v13    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/service/autofill/InternalValidator;Landroid/service/autofill/BatchUpdates;>;"
    .end local v14    # "condition":Landroid/service/autofill/InternalValidator;
    .end local v15    # "batchUpdates":Landroid/service/autofill/BatchUpdates;
    .end local v19    # "type":I
    .restart local v6    # "type":I
    :catch_c7
    move-exception v0

    move/from16 v19, v6

    move-object/from16 v4, p2

    .end local v6    # "type":I
    .restart local v19    # "type":I
    goto/16 :goto_17e

    .line 353
    .end local v18    # "customDescription":Landroid/service/autofill/CustomDescription;
    .end local v19    # "type":I
    .restart local v0    # "customSubtitleView":Landroid/view/View;
    .restart local v4    # "customDescription":Landroid/service/autofill/CustomDescription;
    .restart local v5    # "templateUpdates":Landroid/widget/RemoteViews;
    .restart local v6    # "type":I
    .restart local v10    # "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Landroid/service/autofill/InternalValidator;Landroid/service/autofill/BatchUpdates;>;>;"
    .restart local v11    # "size":I
    .restart local v12    # "i":I
    .restart local v13    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/service/autofill/InternalValidator;Landroid/service/autofill/BatchUpdates;>;"
    .restart local v14    # "condition":Landroid/service/autofill/InternalValidator;
    .restart local v15    # "batchUpdates":Landroid/service/autofill/BatchUpdates;
    :cond_ce
    move-object/from16 v18, v4

    move/from16 v19, v6

    .end local v4    # "customDescription":Landroid/service/autofill/CustomDescription;
    .end local v6    # "type":I
    .restart local v18    # "customDescription":Landroid/service/autofill/CustomDescription;
    .restart local v19    # "type":I
    :goto_d2
    invoke-virtual {v5, v2, v0}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_da

    .line 356
    .end local v18    # "customDescription":Landroid/service/autofill/CustomDescription;
    .end local v19    # "type":I
    .restart local v4    # "customDescription":Landroid/service/autofill/CustomDescription;
    .restart local v6    # "type":I
    :cond_d6
    move-object/from16 v18, v4

    move/from16 v19, v6

    .line 357
    .end local v4    # "customDescription":Landroid/service/autofill/CustomDescription;
    .end local v6    # "type":I
    .restart local v18    # "customDescription":Landroid/service/autofill/CustomDescription;
    .restart local v19    # "type":I
    :goto_da
    invoke-virtual {v15}, Landroid/service/autofill/BatchUpdates;->getTransformations()Ljava/util/ArrayList;

    move-result-object v1

    .line 358
    .local v1, "batchTransformations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Landroid/service/autofill/InternalTransformation;>;>;"
    if-eqz v1, :cond_14f

    .line 359
    sget-boolean v4, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v4, :cond_105

    .line 360
    const-string v4, "AutofillSaveUi"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v5

    const-string v5, "Applying child transformation for batch update #"

    .end local v5    # "templateUpdates":Landroid/widget/RemoteViews;
    .local v20, "templateUpdates":Landroid/widget/RemoteViews;
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_107

    .line 363
    .end local v20    # "templateUpdates":Landroid/widget/RemoteViews;
    .restart local v5    # "templateUpdates":Landroid/widget/RemoteViews;
    :cond_105
    move-object/from16 v20, v5

    .end local v5    # "templateUpdates":Landroid/widget/RemoteViews;
    .restart local v20    # "templateUpdates":Landroid/widget/RemoteViews;
    :goto_107
    invoke-static {v3, v7, v1}, Landroid/service/autofill/InternalTransformation;->batchApply(Landroid/service/autofill/ValueFinder;Landroid/widget/RemoteViews;Ljava/util/ArrayList;)Z

    move-result v4

    if-nez v4, :cond_12d

    .line 365
    const-string v4, "AutofillSaveUi"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not apply child transformation for batch update #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    const/4 v4, 0x0

    return v4

    .line 369
    :cond_12d
    invoke-virtual {v7, v2, v0}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;)V

    .end local v1    # "batchTransformations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Landroid/service/autofill/InternalTransformation;>;>;"
    .end local v13    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/service/autofill/InternalValidator;Landroid/service/autofill/BatchUpdates;>;"
    .end local v14    # "condition":Landroid/service/autofill/InternalValidator;
    .end local v15    # "batchUpdates":Landroid/service/autofill/BatchUpdates;
    .end local v20    # "templateUpdates":Landroid/widget/RemoteViews;
    goto :goto_14f

    .line 345
    .end local v18    # "customDescription":Landroid/service/autofill/CustomDescription;
    .end local v19    # "type":I
    .restart local v4    # "customDescription":Landroid/service/autofill/CustomDescription;
    .restart local v6    # "type":I
    .restart local v13    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/service/autofill/InternalValidator;Landroid/service/autofill/BatchUpdates;>;"
    .restart local v14    # "condition":Landroid/service/autofill/InternalValidator;
    :cond_131
    move-object/from16 v18, v4

    move/from16 v19, v6

    .end local v4    # "customDescription":Landroid/service/autofill/CustomDescription;
    .end local v6    # "type":I
    .restart local v18    # "customDescription":Landroid/service/autofill/CustomDescription;
    .restart local v19    # "type":I
    :goto_135
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_14f

    const-string v1, "AutofillSaveUi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skipping batch update #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14f
    .catch Ljava/lang/Exception; {:try_start_b7 .. :try_end_14f} :catch_15a

    .line 341
    .end local v13    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/service/autofill/InternalValidator;Landroid/service/autofill/BatchUpdates;>;"
    .end local v14    # "condition":Landroid/service/autofill/InternalValidator;
    :cond_14f
    :goto_14f
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v4, v18

    move/from16 v6, v19

    move-object/from16 v1, p0

    const/4 v5, 0x0

    goto/16 :goto_80

    .line 380
    .end local v0    # "customSubtitleView":Landroid/view/View;
    .end local v10    # "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Landroid/service/autofill/InternalValidator;Landroid/service/autofill/BatchUpdates;>;>;"
    .end local v11    # "size":I
    .end local v12    # "i":I
    :catch_15a
    move-exception v0

    goto/16 :goto_7b

    .line 375
    .end local v18    # "customDescription":Landroid/service/autofill/CustomDescription;
    .end local v19    # "type":I
    .restart local v0    # "customSubtitleView":Landroid/view/View;
    .restart local v4    # "customDescription":Landroid/service/autofill/CustomDescription;
    .restart local v6    # "type":I
    .restart local v10    # "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Landroid/service/autofill/InternalValidator;Landroid/service/autofill/BatchUpdates;>;>;"
    :cond_15d
    move-object/from16 v18, v4

    move/from16 v19, v6

    .end local v4    # "customDescription":Landroid/service/autofill/CustomDescription;
    .end local v6    # "type":I
    .restart local v18    # "customDescription":Landroid/service/autofill/CustomDescription;
    .restart local v19    # "type":I
    const v1, 0x10201c3

    .line 376
    move-object/from16 v4, p2

    :try_start_166
    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 377
    .local v1, "subtitleContainer":Landroid/view/ViewGroup;
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 378
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V
    :try_end_173
    .catch Ljava/lang/Exception; {:try_start_166 .. :try_end_173} :catch_175

    .line 379
    const/4 v5, 0x1

    return v5

    .line 380
    .end local v0    # "customSubtitleView":Landroid/view/View;
    .end local v1    # "subtitleContainer":Landroid/view/ViewGroup;
    .end local v10    # "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Landroid/service/autofill/InternalValidator;Landroid/service/autofill/BatchUpdates;>;>;"
    :catch_175
    move-exception v0

    goto :goto_17e

    .end local v18    # "customDescription":Landroid/service/autofill/CustomDescription;
    .end local v19    # "type":I
    .restart local v4    # "customDescription":Landroid/service/autofill/CustomDescription;
    .restart local v6    # "type":I
    :catch_177
    move-exception v0

    move-object/from16 v18, v4

    move/from16 v19, v6

    move-object/from16 v4, p2

    .line 381
    .end local v4    # "customDescription":Landroid/service/autofill/CustomDescription;
    .end local v6    # "type":I
    .local v0, "e":Ljava/lang/Exception;
    .restart local v18    # "customDescription":Landroid/service/autofill/CustomDescription;
    .restart local v19    # "type":I
    :goto_17e
    const-string v1, "AutofillSaveUi"

    const-string v5, "Error applying custom description. "

    invoke-static {v1, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 383
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return v1
.end method

.method private static isValidLink(Landroid/app/PendingIntent;Landroid/content/Intent;)Z
    .registers 5
    .param p0, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p1, "intent"    # Landroid/content/Intent;

    .line 411
    const/4 v0, 0x0

    if-nez p0, :cond_c

    .line 412
    const-string v1, "AutofillSaveUi"

    const-string/jumbo v2, "isValidLink(): custom description without pending intent"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    return v0

    .line 415
    :cond_c
    invoke-virtual {p0}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 416
    const-string v1, "AutofillSaveUi"

    const-string/jumbo v2, "isValidLink(): pending intent not for activity"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    return v0

    .line 419
    :cond_1b
    if-nez p1, :cond_26

    .line 420
    const-string v1, "AutofillSaveUi"

    const-string/jumbo v2, "isValidLink(): no intent"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    return v0

    .line 423
    :cond_26
    const/4 v0, 0x1

    return v0
.end method

.method public static synthetic lambda$new$0(Lcom/android/server/autofill/ui/SaveUi;Landroid/service/autofill/SaveInfo;Landroid/content/DialogInterface;I)V
    .registers 6
    .param p1, "info"    # Landroid/service/autofill/SaveInfo;
    .param p2, "v"    # Landroid/content/DialogInterface;
    .param p3, "w"    # I

    .line 160
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mListener:Lcom/android/server/autofill/ui/SaveUi$OneTimeListener;

    invoke-virtual {p1}, Landroid/service/autofill/SaveInfo;->getNegativeActionListener()Landroid/content/IntentSender;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/autofill/ui/SaveUi$OneTimeListener;->onCancel(Landroid/content/IntentSender;)V

    return-void
.end method

.method public static synthetic lambda$new$1(Lcom/android/server/autofill/ui/SaveUi;Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "v"    # Landroid/content/DialogInterface;
    .param p2, "w"    # I

    .line 161
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mListener:Lcom/android/server/autofill/ui/SaveUi$OneTimeListener;

    invoke-virtual {v0}, Lcom/android/server/autofill/ui/SaveUi$OneTimeListener;->onSave()V

    return-void
.end method

.method public static synthetic lambda$new$2(Lcom/android/server/autofill/ui/SaveUi;Landroid/content/DialogInterface;)V
    .registers 4
    .param p1, "d"    # Landroid/content/DialogInterface;

    .line 162
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mListener:Lcom/android/server/autofill/ui/SaveUi$OneTimeListener;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/autofill/ui/SaveUi$OneTimeListener;->onCancel(Landroid/content/IntentSender;)V

    return-void
.end method

.method public static synthetic lambda$new$3(Lcom/android/server/autofill/ui/SaveUi;Landroid/service/autofill/SaveInfo;Landroid/view/View;)V
    .registers 5
    .param p1, "info"    # Landroid/service/autofill/SaveInfo;
    .param p2, "v"    # Landroid/view/View;

    .line 240
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mListener:Lcom/android/server/autofill/ui/SaveUi$OneTimeListener;

    invoke-virtual {p1}, Landroid/service/autofill/SaveInfo;->getNegativeActionListener()Landroid/content/IntentSender;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/autofill/ui/SaveUi$OneTimeListener;->onCancel(Landroid/content/IntentSender;)V

    return-void
.end method

.method public static synthetic lambda$new$4(Lcom/android/server/autofill/ui/SaveUi;Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .line 243
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mListener:Lcom/android/server/autofill/ui/SaveUi$OneTimeListener;

    invoke-virtual {v0}, Lcom/android/server/autofill/ui/SaveUi$OneTimeListener;->onSave()V

    return-void
.end method

.method public static synthetic lambda$new$5(Lcom/android/server/autofill/ui/SaveUi;Landroid/content/DialogInterface;)V
    .registers 4
    .param p1, "d"    # Landroid/content/DialogInterface;

    .line 250
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mListener:Lcom/android/server/autofill/ui/SaveUi$OneTimeListener;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/autofill/ui/SaveUi$OneTimeListener;->onCancel(Landroid/content/IntentSender;)V

    return-void
.end method

.method private newLogMaker(I)Landroid/metrics/LogMaker;
    .registers 6
    .param p1, "category"    # I

    .line 431
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mComponentName:Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/server/autofill/ui/SaveUi;->mServicePackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/autofill/ui/SaveUi;->mPendingUi:Lcom/android/server/autofill/ui/PendingUi;

    iget v2, v2, Lcom/android/server/autofill/ui/PendingUi;->sessionId:I

    iget-boolean v3, p0, Lcom/android/server/autofill/ui/SaveUi;->mCompatMode:Z

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/server/autofill/Helper;->newLogMaker(ILandroid/content/ComponentName;Ljava/lang/String;IZ)Landroid/metrics/LogMaker;

    move-result-object v0

    return-object v0
.end method

.method private newLogMaker(II)Landroid/metrics/LogMaker;
    .registers 6
    .param p1, "category"    # I
    .param p2, "saveType"    # I

    .line 427
    invoke-direct {p0, p1}, Lcom/android/server/autofill/ui/SaveUi;->newLogMaker(I)Landroid/metrics/LogMaker;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x46a

    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    return-object v0
.end method

.method private setServiceIcon(Landroid/content/Context;Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "serviceIcon"    # Landroid/graphics/drawable/Drawable;

    .line 387
    const v0, 0x10201c4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 388
    .local v0, "iconView":Landroid/widget/ImageView;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 390
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x105002b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 391
    .local v2, "maxWidth":I
    move v3, v2

    .line 392
    .local v3, "maxHeight":I
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v4

    .line 393
    .local v4, "actualWidth":I
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v5

    .line 395
    .local v5, "actualHeight":I
    if-gt v4, v2, :cond_5e

    if-gt v5, v3, :cond_5e

    .line 396
    sget-boolean v6, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v6, :cond_5a

    .line 397
    const-string v6, "AutofillSaveUi"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Adding service icon ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ") as it\'s less than maximum ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ")."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :cond_5a
    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_9c

    .line 403
    :cond_5e
    const-string v6, "AutofillSaveUi"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Not adding service icon of size ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ") because maximum is ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ")."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 408
    :goto_9c
    return-void
.end method

.method private show()V
    .registers 4

    .line 476
    const-string v0, "AutofillSaveUi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Showing save dialog: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/autofill/ui/SaveUi;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 478
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    invoke-virtual {v0}, Lcom/android/server/autofill/ui/OverlayControl;->hideOverlays()V

    .line 479
    return-void
.end method

.method private throwIfDestroyed()V
    .registers 3

    .line 505
    iget-boolean v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mDestroyed:Z

    if-nez v0, :cond_5

    .line 508
    return-void

    .line 506
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot interact with a destroyed instance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeLog(II)V
    .registers 5
    .param p1, "category"    # I
    .param p2, "saveType"    # I

    .line 436
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {p0, p1, p2}, Lcom/android/server/autofill/ui/SaveUi;->newLogMaker(II)Landroid/metrics/LogMaker;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 437
    return-void
.end method


# virtual methods
.method destroy()V
    .registers 3

    .line 493
    :try_start_0
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_b

    const-string v0, "AutofillSaveUi"

    const-string v1, "destroy()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    :cond_b
    invoke-direct {p0}, Lcom/android/server/autofill/ui/SaveUi;->throwIfDestroyed()V

    .line 495
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mListener:Lcom/android/server/autofill/ui/SaveUi$OneTimeListener;

    invoke-virtual {v0}, Lcom/android/server/autofill/ui/SaveUi$OneTimeListener;->onDestroy()V

    .line 496
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/autofill/ui/SaveUi;->mListener:Lcom/android/server/autofill/ui/SaveUi$OneTimeListener;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 497
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 498
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mDestroyed:Z
    :try_end_22
    .catchall {:try_start_0 .. :try_end_22} :catchall_29

    .line 500
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    invoke-virtual {v0}, Lcom/android/server/autofill/ui/OverlayControl;->showOverlays()V

    .line 501
    nop

    .line 502
    return-void

    .line 500
    :catchall_29
    move-exception v0

    iget-object v1, p0, Lcom/android/server/autofill/ui/SaveUi;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    invoke-virtual {v1}, Lcom/android/server/autofill/ui/OverlayControl;->showOverlays()V

    throw v0
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 516
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "title: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 517
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "subtitle: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mSubTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 518
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "pendingUi: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mPendingUi:Lcom/android/server/autofill/ui/PendingUi;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 519
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "service: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mServicePackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 520
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "app: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 521
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "compat mode: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mCompatMode:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 523
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 524
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v1

    .line 525
    .local v1, "loc":[I
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "coordinates: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 526
    const/16 v2, 0x28

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(C)V

    const/4 v3, 0x0

    aget v4, v1, v3

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    const/16 v4, 0x2c

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    const/4 v5, 0x1

    aget v6, v1, v5

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    const/16 v6, 0x29

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(C)V

    .line 527
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 528
    aget v2, v1, v3

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 529
    aget v2, v1, v5

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(C)V

    .line 530
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "destroyed: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/autofill/ui/SaveUi;->mDestroyed:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 531
    return-void
.end method

.method hide()Lcom/android/server/autofill/ui/PendingUi;
    .registers 3

    .line 482
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_b

    const-string v0, "AutofillSaveUi"

    const-string v1, "Hiding save dialog."

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_19

    .line 486
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    invoke-virtual {v0}, Lcom/android/server/autofill/ui/OverlayControl;->showOverlays()V

    .line 487
    nop

    .line 488
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mPendingUi:Lcom/android/server/autofill/ui/PendingUi;

    return-object v0

    .line 486
    :catchall_19
    move-exception v0

    iget-object v1, p0, Lcom/android/server/autofill/ui/SaveUi;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    invoke-virtual {v1}, Lcom/android/server/autofill/ui/OverlayControl;->showOverlays()V

    throw v0
.end method

.method onPendingUi(ILandroid/os/IBinder;)V
    .registers 7
    .param p1, "operation"    # I
    .param p2, "token"    # Landroid/os/IBinder;

    .line 447
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mPendingUi:Lcom/android/server/autofill/ui/PendingUi;

    invoke-virtual {v0, p2}, Lcom/android/server/autofill/ui/PendingUi;->matches(Landroid/os/IBinder;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 448
    const-string v0, "AutofillSaveUi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "restore("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "): got token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " instead of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/autofill/ui/SaveUi;->mPendingUi:Lcom/android/server/autofill/ui/PendingUi;

    .line 449
    invoke-virtual {v2}, Lcom/android/server/autofill/ui/PendingUi;->getToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 448
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    return-void

    .line 452
    :cond_36
    const/16 v0, 0x46e

    invoke-direct {p0, v0}, Lcom/android/server/autofill/ui/SaveUi;->newLogMaker(I)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 454
    .local v0, "log":Landroid/metrics/LogMaker;
    packed-switch p1, :pswitch_data_b4

    .line 466
    const/16 v1, 0xb

    :try_start_41
    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    goto :goto_89

    .line 456
    :pswitch_45
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_5f

    const-string v1, "AutofillSaveUi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Restoring save dialog for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    :cond_5f
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 458
    invoke-direct {p0}, Lcom/android/server/autofill/ui/SaveUi;->show()V

    .line 459
    goto :goto_a0

    .line 461
    :pswitch_67
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 462
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_85

    const-string v1, "AutofillSaveUi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cancelling pending save dialog for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    :cond_85
    invoke-virtual {p0}, Lcom/android/server/autofill/ui/SaveUi;->hide()Lcom/android/server/autofill/ui/PendingUi;

    .line 464
    goto :goto_a0

    .line 467
    :goto_89
    const-string v1, "AutofillSaveUi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "restore(): invalid operation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a0
    .catchall {:try_start_41 .. :try_end_a0} :catchall_ad

    .line 470
    :goto_a0
    iget-object v1, p0, Lcom/android/server/autofill/ui/SaveUi;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v1, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 471
    nop

    .line 472
    iget-object v1, p0, Lcom/android/server/autofill/ui/SaveUi;->mPendingUi:Lcom/android/server/autofill/ui/PendingUi;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/server/autofill/ui/PendingUi;->setState(I)V

    .line 473
    return-void

    .line 470
    :catchall_ad
    move-exception v1

    iget-object v2, p0, Lcom/android/server/autofill/ui/SaveUi;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v2, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    throw v1

    :pswitch_data_b4
    .packed-switch 0x1
        :pswitch_67
        :pswitch_45
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 512
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_7

    const-string v0, "NO TITLE"

    goto :goto_d

    :cond_7
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mTitle:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_d
    return-object v0
.end method
