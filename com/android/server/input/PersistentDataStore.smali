.class final Lcom/android/server/input/PersistentDataStore;
.super Ljava/lang/Object;
.source "PersistentDataStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/input/PersistentDataStore$InputDeviceState;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "InputManager"


# instance fields
.field private final mAtomicFile:Landroid/util/AtomicFile;

.field private mDirty:Z

.field private final mInputDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/input/PersistentDataStore$InputDeviceState;",
            ">;"
        }
    .end annotation
.end field

.field private mLoaded:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/PersistentDataStore;->mInputDevices:Ljava/util/HashMap;

    .line 79
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    const-string v2, "/data/system/input-manager-state.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v2, "input-state"

    invoke-direct {v0, v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/input/PersistentDataStore;->mAtomicFile:Landroid/util/AtomicFile;

    .line 81
    return-void
.end method

.method private clearState()V
    .registers 2

    .line 204
    iget-object v0, p0, Lcom/android/server/input/PersistentDataStore;->mInputDevices:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 205
    return-void
.end method

.method private getInputDeviceState(Ljava/lang/String;Z)Lcom/android/server/input/PersistentDataStore$InputDeviceState;
    .registers 6
    .param p1, "inputDeviceDescriptor"    # Ljava/lang/String;
    .param p2, "createIfAbsent"    # Z

    .line 182
    invoke-direct {p0}, Lcom/android/server/input/PersistentDataStore;->loadIfNeeded()V

    .line 183
    iget-object v0, p0, Lcom/android/server/input/PersistentDataStore;->mInputDevices:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    .line 184
    .local v0, "state":Lcom/android/server/input/PersistentDataStore$InputDeviceState;
    if-nez v0, :cond_1e

    if-eqz p2, :cond_1e

    .line 185
    new-instance v1, Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;-><init>(Lcom/android/server/input/PersistentDataStore$1;)V

    move-object v0, v1

    .line 186
    iget-object v1, p0, Lcom/android/server/input/PersistentDataStore;->mInputDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    invoke-direct {p0}, Lcom/android/server/input/PersistentDataStore;->setDirty()V

    .line 189
    :cond_1e
    return-object v0
.end method

.method private load()V
    .registers 5

    .line 208
    invoke-direct {p0}, Lcom/android/server/input/PersistentDataStore;->clearState()V

    .line 212
    :try_start_3
    iget-object v0, p0, Lcom/android/server/input/PersistentDataStore;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_9} :catch_43

    .line 215
    .local v0, "is":Ljava/io/InputStream;
    nop

    .line 214
    nop

    .line 219
    :try_start_b
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 220
    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 221
    invoke-direct {p0, v1}, Lcom/android/server/input/PersistentDataStore;->loadFromXml(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_20} :catch_2f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_20} :catch_23
    .catchall {:try_start_b .. :try_end_20} :catchall_21

    goto :goto_3a

    .line 229
    .end local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catchall_21
    move-exception v1

    goto :goto_3f

    .line 225
    :catch_23
    move-exception v1

    .line 226
    .local v1, "ex":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_24
    const-string v2, "InputManager"

    const-string v3, "Failed to load input manager persistent store data."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 227
    invoke-direct {p0}, Lcom/android/server/input/PersistentDataStore;->clearState()V

    .end local v1    # "ex":Lorg/xmlpull/v1/XmlPullParserException;
    goto :goto_3a

    .line 222
    :catch_2f
    move-exception v1

    .line 223
    .local v1, "ex":Ljava/io/IOException;
    const-string v2, "InputManager"

    const-string v3, "Failed to load input manager persistent store data."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 224
    invoke-direct {p0}, Lcom/android/server/input/PersistentDataStore;->clearState()V
    :try_end_3a
    .catchall {:try_start_24 .. :try_end_3a} :catchall_21

    .line 229
    .end local v1    # "ex":Ljava/io/IOException;
    :goto_3a
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 230
    nop

    .line 231
    return-void

    .line 229
    :goto_3f
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v1

    .line 213
    .end local v0    # "is":Ljava/io/InputStream;
    :catch_43
    move-exception v0

    .line 214
    .local v0, "ex":Ljava/io/FileNotFoundException;
    return-void
.end method

.method private loadFromXml(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 5
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 258
    const-string v0, "input-manager-state"

    invoke-static {p1, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 259
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 260
    .local v0, "outerDepth":I
    :cond_9
    :goto_9
    invoke-static {p1, v0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 261
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "input-devices"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 262
    invoke-direct {p0, p1}, Lcom/android/server/input/PersistentDataStore;->loadInputDevicesFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_9

    .line 265
    :cond_1f
    return-void
.end method

.method private loadIfNeeded()V
    .registers 2

    .line 193
    iget-boolean v0, p0, Lcom/android/server/input/PersistentDataStore;->mLoaded:Z

    if-nez v0, :cond_a

    .line 194
    invoke-direct {p0}, Lcom/android/server/input/PersistentDataStore;->load()V

    .line 195
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/input/PersistentDataStore;->mLoaded:Z

    .line 197
    :cond_a
    return-void
.end method

.method private loadInputDevicesFromXml(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 269
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 270
    .local v0, "outerDepth":I
    :cond_4
    :goto_4
    invoke-static {p1, v0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 271
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "input-device"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 272
    const-string v1, "descriptor"

    const/4 v2, 0x0

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 273
    .local v1, "descriptor":Ljava/lang/String;
    if-eqz v1, :cond_3e

    .line 277
    iget-object v3, p0, Lcom/android/server/input/PersistentDataStore;->mInputDevices:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_36

    .line 281
    new-instance v3, Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    invoke-direct {v3, v2}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;-><init>(Lcom/android/server/input/PersistentDataStore$1;)V

    move-object v2, v3

    .line 282
    .local v2, "state":Lcom/android/server/input/PersistentDataStore$InputDeviceState;
    invoke-virtual {v2, p1}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->loadFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 283
    iget-object v3, p0, Lcom/android/server/input/PersistentDataStore;->mInputDevices:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    .end local v1    # "descriptor":Ljava/lang/String;
    .end local v2    # "state":Lcom/android/server/input/PersistentDataStore$InputDeviceState;
    goto :goto_4

    .line 278
    .restart local v1    # "descriptor":Ljava/lang/String;
    :cond_36
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "Found duplicate input device."

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 274
    :cond_3e
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "Missing descriptor attribute on input-device."

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 286
    .end local v1    # "descriptor":Ljava/lang/String;
    :cond_46
    return-void
.end method

.method private save()V
    .registers 6

    .line 236
    :try_start_0
    iget-object v0, p0, Lcom/android/server/input/PersistentDataStore;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_3f

    .line 237
    .local v0, "os":Ljava/io/FileOutputStream;
    const/4 v1, 0x0

    .line 239
    .local v1, "success":Z
    :try_start_7
    new-instance v2, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v2}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 240
    .local v2, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 241
    invoke-direct {p0, v2}, Lcom/android/server/input/PersistentDataStore;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 242
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->flush()V
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_30

    .line 243
    const/4 v1, 0x1

    .line 245
    .end local v2    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    if-eqz v1, :cond_29

    .line 246
    :try_start_23
    iget-object v2, p0, Lcom/android/server/input/PersistentDataStore;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    goto :goto_2f

    .line 248
    :cond_29
    iget-object v2, p0, Lcom/android/server/input/PersistentDataStore;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 250
    nop

    .line 253
    .end local v1    # "success":Z
    :goto_2f
    goto :goto_47

    .line 245
    .restart local v1    # "success":Z
    :catchall_30
    move-exception v2

    if-eqz v1, :cond_39

    .line 246
    iget-object v3, p0, Lcom/android/server/input/PersistentDataStore;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v3, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    goto :goto_3e

    .line 248
    :cond_39
    iget-object v3, p0, Lcom/android/server/input/PersistentDataStore;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v3, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :goto_3e
    throw v2
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_3f} :catch_3f

    .line 251
    .end local v0    # "os":Ljava/io/FileOutputStream;
    .end local v1    # "success":Z
    :catch_3f
    move-exception v0

    .line 252
    .local v0, "ex":Ljava/io/IOException;
    const-string v1, "InputManager"

    const-string v2, "Failed to save input manager persistent store data."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 254
    .end local v0    # "ex":Ljava/io/IOException;
    :goto_47
    return-void
.end method

.method private saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 8
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 289
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 290
    const-string v1, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 291
    const-string v0, "input-manager-state"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 292
    const-string v0, "input-devices"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 293
    iget-object v0, p0, Lcom/android/server/input/PersistentDataStore;->mInputDevices:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 294
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/input/PersistentDataStore$InputDeviceState;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 295
    .local v3, "descriptor":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    .line 296
    .local v4, "state":Lcom/android/server/input/PersistentDataStore$InputDeviceState;
    const-string v5, "input-device"

    invoke-interface {p1, v2, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 297
    const-string v5, "descriptor"

    invoke-interface {p1, v2, v5, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 298
    invoke-virtual {v4, p1}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 299
    const-string v5, "input-device"

    invoke-interface {p1, v2, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 300
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/input/PersistentDataStore$InputDeviceState;>;"
    .end local v3    # "descriptor":Ljava/lang/String;
    .end local v4    # "state":Lcom/android/server/input/PersistentDataStore$InputDeviceState;
    goto :goto_22

    .line 301
    :cond_4d
    const-string v0, "input-devices"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 302
    const-string v0, "input-manager-state"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 303
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 304
    return-void
.end method

.method private setDirty()V
    .registers 2

    .line 200
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/input/PersistentDataStore;->mDirty:Z

    .line 201
    return-void
.end method


# virtual methods
.method public addKeyboardLayout(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1, "inputDeviceDescriptor"    # Ljava/lang/String;
    .param p2, "keyboardLayoutDescriptor"    # Ljava/lang/String;

    .line 139
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/input/PersistentDataStore;->getInputDeviceState(Ljava/lang/String;Z)Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    move-result-object v1

    .line 140
    .local v1, "state":Lcom/android/server/input/PersistentDataStore$InputDeviceState;
    invoke-virtual {v1, p2}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->addKeyboardLayout(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 141
    invoke-direct {p0}, Lcom/android/server/input/PersistentDataStore;->setDirty()V

    .line 142
    return v0

    .line 144
    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "inputDeviceDescriptor"    # Ljava/lang/String;

    .line 115
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/input/PersistentDataStore;->getInputDeviceState(Ljava/lang/String;Z)Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    move-result-object v0

    .line 116
    .local v0, "state":Lcom/android/server/input/PersistentDataStore$InputDeviceState;
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->getCurrentKeyboardLayout()Ljava/lang/String;

    move-result-object v1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return-object v1
.end method

.method public getKeyboardLayouts(Ljava/lang/String;)[Ljava/lang/String;
    .registers 4
    .param p1, "inputDeviceDescriptor"    # Ljava/lang/String;

    .line 130
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/input/PersistentDataStore;->getInputDeviceState(Ljava/lang/String;Z)Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    move-result-object v0

    .line 131
    .local v0, "state":Lcom/android/server/input/PersistentDataStore$InputDeviceState;
    if-nez v0, :cond_10

    .line 132
    const-class v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1

    .line 134
    :cond_10
    invoke-virtual {v0}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->getKeyboardLayouts()[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getTouchCalibration(Ljava/lang/String;I)Landroid/hardware/input/TouchCalibration;
    .registers 6
    .param p1, "inputDeviceDescriptor"    # Ljava/lang/String;
    .param p2, "surfaceRotation"    # I

    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/input/PersistentDataStore;->getInputDeviceState(Ljava/lang/String;Z)Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    move-result-object v0

    .line 92
    .local v0, "state":Lcom/android/server/input/PersistentDataStore$InputDeviceState;
    if-nez v0, :cond_a

    .line 93
    sget-object v1, Landroid/hardware/input/TouchCalibration;->IDENTITY:Landroid/hardware/input/TouchCalibration;

    return-object v1

    .line 96
    :cond_a
    invoke-virtual {v0, p2}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->getTouchCalibration(I)Landroid/hardware/input/TouchCalibration;

    move-result-object v1

    .line 97
    .local v1, "cal":Landroid/hardware/input/TouchCalibration;
    if-nez v1, :cond_13

    .line 98
    sget-object v2, Landroid/hardware/input/TouchCalibration;->IDENTITY:Landroid/hardware/input/TouchCalibration;

    return-object v2

    .line 100
    :cond_13
    return-object v1
.end method

.method public removeKeyboardLayout(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1, "inputDeviceDescriptor"    # Ljava/lang/String;
    .param p2, "keyboardLayoutDescriptor"    # Ljava/lang/String;

    .line 149
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/input/PersistentDataStore;->getInputDeviceState(Ljava/lang/String;Z)Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    move-result-object v1

    .line 150
    .local v1, "state":Lcom/android/server/input/PersistentDataStore$InputDeviceState;
    invoke-virtual {v1, p2}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->removeKeyboardLayout(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 151
    invoke-direct {p0}, Lcom/android/server/input/PersistentDataStore;->setDirty()V

    .line 152
    return v0

    .line 154
    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public removeUninstalledKeyboardLayouts(Ljava/util/Set;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 167
    .local p1, "availableKeyboardLayouts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 168
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/input/PersistentDataStore;->mInputDevices:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    .line 169
    .local v2, "state":Lcom/android/server/input/PersistentDataStore$InputDeviceState;
    invoke-virtual {v2, p1}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->removeUninstalledKeyboardLayouts(Ljava/util/Set;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 170
    const/4 v0, 0x1

    .line 172
    .end local v2    # "state":Lcom/android/server/input/PersistentDataStore$InputDeviceState;
    :cond_1e
    goto :goto_b

    .line 173
    :cond_1f
    if-eqz v0, :cond_26

    .line 174
    invoke-direct {p0}, Lcom/android/server/input/PersistentDataStore;->setDirty()V

    .line 175
    const/4 v1, 0x1

    return v1

    .line 177
    :cond_26
    const/4 v1, 0x0

    return v1
.end method

.method public saveIfNeeded()V
    .registers 2

    .line 84
    iget-boolean v0, p0, Lcom/android/server/input/PersistentDataStore;->mDirty:Z

    if-eqz v0, :cond_a

    .line 85
    invoke-direct {p0}, Lcom/android/server/input/PersistentDataStore;->save()V

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/input/PersistentDataStore;->mDirty:Z

    .line 88
    :cond_a
    return-void
.end method

.method public setCurrentKeyboardLayout(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1, "inputDeviceDescriptor"    # Ljava/lang/String;
    .param p2, "keyboardLayoutDescriptor"    # Ljava/lang/String;

    .line 121
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/input/PersistentDataStore;->getInputDeviceState(Ljava/lang/String;Z)Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    move-result-object v1

    .line 122
    .local v1, "state":Lcom/android/server/input/PersistentDataStore$InputDeviceState;
    invoke-virtual {v1, p2}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->setCurrentKeyboardLayout(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 123
    invoke-direct {p0}, Lcom/android/server/input/PersistentDataStore;->setDirty()V

    .line 124
    return v0

    .line 126
    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public setTouchCalibration(Ljava/lang/String;ILandroid/hardware/input/TouchCalibration;)Z
    .registers 7
    .param p1, "inputDeviceDescriptor"    # Ljava/lang/String;
    .param p2, "surfaceRotation"    # I
    .param p3, "calibration"    # Landroid/hardware/input/TouchCalibration;

    .line 104
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/input/PersistentDataStore;->getInputDeviceState(Ljava/lang/String;Z)Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    move-result-object v1

    .line 106
    .local v1, "state":Lcom/android/server/input/PersistentDataStore$InputDeviceState;
    invoke-virtual {v1, p2, p3}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->setTouchCalibration(ILandroid/hardware/input/TouchCalibration;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 107
    invoke-direct {p0}, Lcom/android/server/input/PersistentDataStore;->setDirty()V

    .line 108
    return v0

    .line 111
    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public switchKeyboardLayout(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "inputDeviceDescriptor"    # Ljava/lang/String;
    .param p2, "direction"    # I

    .line 158
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/input/PersistentDataStore;->getInputDeviceState(Ljava/lang/String;Z)Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    move-result-object v1

    .line 159
    .local v1, "state":Lcom/android/server/input/PersistentDataStore$InputDeviceState;
    if-eqz v1, :cond_12

    invoke-virtual {v1, p2}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->switchKeyboardLayout(I)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 160
    invoke-direct {p0}, Lcom/android/server/input/PersistentDataStore;->setDirty()V

    .line 161
    const/4 v0, 0x1

    return v0

    .line 163
    :cond_12
    return v0
.end method
