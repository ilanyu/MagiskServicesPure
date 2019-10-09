.class Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;
.super Ljava/lang/Object;
.source "DatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/voiceinteraction/DatabaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SoundModelRecord"
.end annotation


# instance fields
.field public final data:[B

.field public final hintText:Ljava/lang/String;

.field public final keyphraseId:I

.field public final locale:Ljava/lang/String;

.field public final modelUuid:Ljava/lang/String;

.field public final recognitionModes:I

.field public final type:I

.field public final users:Ljava/lang/String;

.field public final vendorUuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILandroid/database/Cursor;)V
    .registers 4
    .param p1, "version"    # I
    .param p2, "c"    # Landroid/database/Cursor;

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 340
    const-string/jumbo v0, "model_uuid"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->modelUuid:Ljava/lang/String;

    .line 341
    const/4 v0, 0x5

    if-lt p1, v0, :cond_21

    .line 342
    const-string/jumbo v0, "vendor_uuid"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->vendorUuid:Ljava/lang/String;

    goto :goto_24

    .line 344
    :cond_21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->vendorUuid:Ljava/lang/String;

    .line 346
    :goto_24
    const-string/jumbo v0, "keyphrase_id"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->keyphraseId:I

    .line 347
    const-string/jumbo v0, "type"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->type:I

    .line 348
    const-string v0, "data"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->data:[B

    .line 349
    const-string/jumbo v0, "recognition_modes"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->recognitionModes:I

    .line 350
    const-string/jumbo v0, "locale"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->locale:Ljava/lang/String;

    .line 351
    const-string v0, "hint_text"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->hintText:Ljava/lang/String;

    .line 352
    const-string/jumbo v0, "users"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->users:Ljava/lang/String;

    .line 353
    return-void
.end method

.method private V6PrimaryKeyMatches(Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;)Z
    .registers 4
    .param p1, "record"    # Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;

    .line 356
    iget v0, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->keyphraseId:I

    iget v1, p1, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->keyphraseId:I

    if-ne v0, v1, :cond_1c

    iget-object v0, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->locale:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->locale:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->stringComparisonHelper(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->users:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->users:Ljava/lang/String;

    .line 357
    invoke-static {v0, v1}, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->stringComparisonHelper(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    .line 356
    :goto_1d
    return v0
.end method

.method private static stringComparisonHelper(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;

    .line 410
    if-eqz p0, :cond_7

    .line 411
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 413
    :cond_7
    if-ne p0, p1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method


# virtual methods
.method public ifViolatesV6PrimaryKeyIsFirstOfAnyDuplicates(Ljava/util/List;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;",
            ">;)Z"
        }
    .end annotation

    .line 370
    .local p1, "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;

    .line 371
    .local v1, "record":Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;
    if-ne p0, v1, :cond_14

    .line 372
    goto :goto_4

    .line 376
    :cond_14
    invoke-direct {p0, v1}, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->V6PrimaryKeyMatches(Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;)Z

    move-result v3

    if-eqz v3, :cond_25

    iget-object v3, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->data:[B

    iget-object v4, v1, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->data:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_25

    .line 377
    return v2

    .line 379
    .end local v1    # "record":Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;
    :cond_25
    goto :goto_4

    .line 382
    :cond_26
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_43

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;

    .line 383
    .restart local v1    # "record":Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;
    invoke-direct {p0, v1}, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->V6PrimaryKeyMatches(Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;)Z

    move-result v4

    if-eqz v4, :cond_42

    .line 384
    if-ne p0, v1, :cond_41

    move v2, v3

    nop

    :cond_41
    return v2

    .line 386
    .end local v1    # "record":Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;
    :cond_42
    goto :goto_2a

    .line 387
    :cond_43
    return v3
.end method

.method public writeToDatabase(ILandroid/database/sqlite/SQLiteDatabase;)J
    .registers 7
    .param p1, "version"    # I
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 391
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 392
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "model_uuid"

    iget-object v2, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->modelUuid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    const/4 v1, 0x5

    if-lt p1, v1, :cond_18

    .line 394
    const-string/jumbo v2, "vendor_uuid"

    iget-object v3, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->vendorUuid:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    :cond_18
    const-string/jumbo v2, "keyphrase_id"

    iget v3, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->keyphraseId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 397
    const-string/jumbo v2, "type"

    iget v3, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->type:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 398
    const-string v2, "data"

    iget-object v3, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->data:[B

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 399
    const-string/jumbo v2, "recognition_modes"

    iget v3, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->recognitionModes:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 400
    const-string/jumbo v2, "locale"

    iget-object v3, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->locale:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    const-string v2, "hint_text"

    iget-object v3, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->hintText:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    const-string/jumbo v2, "users"

    iget-object v3, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->users:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    const-string/jumbo v2, "sound_model"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v1

    return-wide v1
.end method
