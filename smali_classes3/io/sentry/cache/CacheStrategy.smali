.class abstract Lio/sentry/cache/CacheStrategy;
.super Ljava/lang/Object;
.source "CacheStrategy.java"


# static fields
.field protected static final UTF_8:Ljava/nio/charset/Charset;


# instance fields
.field protected final directory:Ljava/io/File;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final maxSize:I

.field protected final options:Lio/sentry/SentryOptions;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field protected final serializer:Lio/sentry/ISerializer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 214
    :try_start_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_0
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    .line 36
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lio/sentry/cache/CacheStrategy;->UTF_8:Ljava/nio/charset/Charset;

    return-void
.end method

.method constructor <init>(Lio/sentry/SentryOptions;Ljava/lang/String;I)V
    .locals 1
    .param p1    # Lio/sentry/SentryOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Directory is required."

    .line 47
    invoke-static {p2, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "SentryOptions is required."

    .line 48
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/SentryOptions;

    iput-object v0, p0, Lio/sentry/cache/CacheStrategy;->options:Lio/sentry/SentryOptions;

    .line 50
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getSerializer()Lio/sentry/ISerializer;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/cache/CacheStrategy;->serializer:Lio/sentry/ISerializer;

    .line 51
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lio/sentry/cache/CacheStrategy;->directory:Ljava/io/File;

    .line 53
    iput p3, p0, Lio/sentry/cache/CacheStrategy;->maxSize:I

    return-void
.end method

.method private buildNewEnvelope(Lio/sentry/SentryEnvelope;Lio/sentry/SentryEnvelopeItem;)Lio/sentry/SentryEnvelope;
    .locals 3
    .param p1    # Lio/sentry/SentryEnvelope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/sentry/SentryEnvelopeItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 282
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 284
    invoke-virtual {p1}, Lio/sentry/SentryEnvelope;->getItems()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/sentry/SentryEnvelopeItem;

    .line 285
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 287
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    new-instance p2, Lio/sentry/SentryEnvelope;

    invoke-virtual {p1}, Lio/sentry/SentryEnvelope;->getHeader()Lio/sentry/SentryEnvelopeHeader;

    move-result-object p1

    invoke-direct {p2, p1, v0}, Lio/sentry/SentryEnvelope;-><init>(Lio/sentry/SentryEnvelopeHeader;Ljava/lang/Iterable;)V

    return-object p2
.end method

.method private getFirstSession(Lio/sentry/SentryEnvelope;)Lio/sentry/Session;
    .locals 2
    .param p1    # Lio/sentry/SentryEnvelope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 222
    invoke-virtual {p1}, Lio/sentry/SentryEnvelope;->getItems()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/SentryEnvelopeItem;

    .line 223
    invoke-direct {p0, v0}, Lio/sentry/cache/CacheStrategy;->isSessionType(Lio/sentry/SentryEnvelopeItem;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 228
    :cond_0
    invoke-direct {p0, v0}, Lio/sentry/cache/CacheStrategy;->readSession(Lio/sentry/SentryEnvelopeItem;)Lio/sentry/Session;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private isSessionType(Lio/sentry/SentryEnvelopeItem;)Z
    .locals 1
    .param p1    # Lio/sentry/SentryEnvelopeItem;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 255
    :cond_0
    invoke-virtual {p1}, Lio/sentry/SentryEnvelopeItem;->getHeader()Lio/sentry/SentryEnvelopeItemHeader;

    move-result-object p1

    invoke-virtual {p1}, Lio/sentry/SentryEnvelopeItemHeader;->getType()Lio/sentry/SentryItemType;

    move-result-object p1

    sget-object v0, Lio/sentry/SentryItemType;->Session:Lio/sentry/SentryItemType;

    invoke-virtual {p1, v0}, Lio/sentry/SentryItemType;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private isValidEnvelope(Lio/sentry/SentryEnvelope;)Z
    .locals 1
    .param p1    # Lio/sentry/SentryEnvelope;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 297
    :cond_0
    invoke-virtual {p1}, Lio/sentry/SentryEnvelope;->getItems()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private isValidSession(Lio/sentry/Session;)Z
    .locals 3
    .param p1    # Lio/sentry/Session;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 238
    :cond_0
    invoke-virtual {p1}, Lio/sentry/Session;->getStatus()Lio/sentry/Session$State;

    move-result-object v1

    sget-object v2, Lio/sentry/Session$State;->Ok:Lio/sentry/Session$State;

    invoke-virtual {v1, v2}, Lio/sentry/Session$State;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 242
    :cond_1
    invoke-virtual {p1}, Lio/sentry/Session;->getSessionId()Ljava/util/UUID;

    move-result-object p1

    if-nez p1, :cond_2

    return v0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method static synthetic lambda$sortFilesOldestToNewest$0(Ljava/io/File;Ljava/io/File;)I
    .locals 2

    .line 82
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method private moveInitFlagIfNecessary(Ljava/io/File;[Ljava/io/File;)V
    .locals 13
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 121
    invoke-direct {p0, p1}, Lio/sentry/cache/CacheStrategy;->readEnvelope(Ljava/io/File;)Lio/sentry/SentryEnvelope;

    move-result-object p1

    .line 123
    invoke-direct {p0, p1}, Lio/sentry/cache/CacheStrategy;->isValidEnvelope(Lio/sentry/SentryEnvelope;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 127
    :cond_0
    invoke-direct {p0, p1}, Lio/sentry/cache/CacheStrategy;->getFirstSession(Lio/sentry/SentryEnvelope;)Lio/sentry/Session;

    move-result-object p1

    .line 129
    invoke-direct {p0, p1}, Lio/sentry/cache/CacheStrategy;->isValidSession(Lio/sentry/Session;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 134
    :cond_1
    invoke-virtual {p1}, Lio/sentry/Session;->getInit()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 135
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_5

    .line 140
    :cond_2
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_b

    aget-object v3, p2, v2

    .line 141
    invoke-direct {p0, v3}, Lio/sentry/cache/CacheStrategy;->readEnvelope(Ljava/io/File;)Lio/sentry/SentryEnvelope;

    move-result-object v4

    .line 143
    invoke-direct {p0, v4}, Lio/sentry/cache/CacheStrategy;->isValidEnvelope(Lio/sentry/SentryEnvelope;)Z

    move-result v5

    if-nez v5, :cond_3

    goto/16 :goto_3

    :cond_3
    const/4 v5, 0x0

    .line 148
    invoke-virtual {v4}, Lio/sentry/SentryEnvelope;->getItems()Ljava/lang/Iterable;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 150
    :cond_4
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_8

    .line 151
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/sentry/SentryEnvelopeItem;

    .line 153
    invoke-direct {p0, v7}, Lio/sentry/cache/CacheStrategy;->isSessionType(Lio/sentry/SentryEnvelopeItem;)Z

    move-result v9

    if-nez v9, :cond_5

    goto :goto_1

    .line 157
    :cond_5
    invoke-direct {p0, v7}, Lio/sentry/cache/CacheStrategy;->readSession(Lio/sentry/SentryEnvelopeItem;)Lio/sentry/Session;

    move-result-object v7

    .line 159
    invoke-direct {p0, v7}, Lio/sentry/cache/CacheStrategy;->isValidSession(Lio/sentry/Session;)Z

    move-result v9

    if-nez v9, :cond_6

    goto :goto_1

    .line 163
    :cond_6
    invoke-virtual {v7}, Lio/sentry/Session;->getInit()Ljava/lang/Boolean;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 164
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 165
    iget-object p2, p0, Lio/sentry/cache/CacheStrategy;->options:Lio/sentry/SentryOptions;

    .line 166
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p2

    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v2, "Session %s has 2 times the init flag."

    new-array v3, v8, [Ljava/lang/Object;

    .line 167
    invoke-virtual {p1}, Lio/sentry/Session;->getSessionId()Ljava/util/UUID;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-interface {p2, v0, v2, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 171
    :cond_7
    invoke-virtual {p1}, Lio/sentry/Session;->getSessionId()Ljava/util/UUID;

    move-result-object v9

    invoke-virtual {v7}, Lio/sentry/Session;->getSessionId()Ljava/util/UUID;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 172
    invoke-virtual {v7}, Lio/sentry/Session;->setInitAsTrue()V

    .line 174
    :try_start_0
    iget-object v9, p0, Lio/sentry/cache/CacheStrategy;->serializer:Lio/sentry/ISerializer;

    invoke-static {v9, v7}, Lio/sentry/SentryEnvelopeItem;->fromSession(Lio/sentry/ISerializer;Lio/sentry/Session;)Lio/sentry/SentryEnvelopeItem;

    move-result-object v5

    .line 177
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v6

    .line 179
    iget-object v7, p0, Lio/sentry/cache/CacheStrategy;->options:Lio/sentry/SentryOptions;

    .line 180
    invoke-virtual {v7}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v7

    sget-object v9, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v10, "Failed to create new envelope item for the session %s"

    new-array v11, v8, [Ljava/lang/Object;

    .line 185
    invoke-virtual {p1}, Lio/sentry/Session;->getSessionId()Ljava/util/UUID;

    move-result-object v12

    aput-object v12, v11, v1

    .line 181
    invoke-interface {v7, v9, v6, v10, v11}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    :goto_2
    if-eqz v5, :cond_a

    .line 193
    invoke-direct {p0, v4, v5}, Lio/sentry/cache/CacheStrategy;->buildNewEnvelope(Lio/sentry/SentryEnvelope;Lio/sentry/SentryEnvelopeItem;)Lio/sentry/SentryEnvelope;

    move-result-object p1

    .line 195
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    .line 196
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result p2

    if-nez p2, :cond_9

    .line 197
    iget-object p2, p0, Lio/sentry/cache/CacheStrategy;->options:Lio/sentry/SentryOptions;

    .line 198
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p2

    sget-object v0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v2, "File can\'t be deleted: %s"

    new-array v6, v8, [Ljava/lang/Object;

    .line 202
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    .line 199
    invoke-interface {p2, v0, v2, v6}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 205
    :cond_9
    invoke-direct {p0, p1, v3, v4, v5}, Lio/sentry/cache/CacheStrategy;->saveNewEnvelope(Lio/sentry/SentryEnvelope;Ljava/io/File;J)V

    goto :goto_4

    :cond_a
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_b
    :goto_4
    return-void

    :cond_c
    :goto_5
    return-void
.end method

.method private readEnvelope(Ljava/io/File;)Lio/sentry/SentryEnvelope;
    .locals 5
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 v0, 0x0

    .line 212
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 213
    :try_start_1
    iget-object p1, p0, Lio/sentry/cache/CacheStrategy;->serializer:Lio/sentry/ISerializer;

    invoke-interface {p1, v1}, Lio/sentry/ISerializer;->deserializeEnvelope(Ljava/io/InputStream;)Lio/sentry/SentryEnvelope;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 214
    :try_start_2
    invoke-static {v0, v1}, Lio/sentry/cache/CacheStrategy;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    return-object p1

    :catchall_0
    move-exception p1

    move-object v2, v0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 212
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    move-object v4, v2

    move-object v2, p1

    move-object p1, v4

    .line 214
    :goto_0
    :try_start_4
    invoke-static {v2, v1}, Lio/sentry/cache/CacheStrategy;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception p1

    .line 215
    iget-object v1, p0, Lio/sentry/cache/CacheStrategy;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v3, "Failed to deserialize the envelope."

    invoke-interface {v1, v2, v3, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private readSession(Lio/sentry/SentryEnvelopeItem;)Lio/sentry/Session;
    .locals 5
    .param p1    # Lio/sentry/SentryEnvelopeItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 v0, 0x0

    .line 259
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    .line 261
    invoke-virtual {p1}, Lio/sentry/SentryEnvelopeItem;->getData()[B

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    sget-object p1, Lio/sentry/cache/CacheStrategy;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 262
    :try_start_1
    iget-object p1, p0, Lio/sentry/cache/CacheStrategy;->serializer:Lio/sentry/ISerializer;

    const-class v2, Lio/sentry/Session;

    invoke-interface {p1, v1, v2}, Lio/sentry/ISerializer;->deserialize(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/Session;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 263
    :try_start_2
    invoke-static {v0, v1}, Lio/sentry/cache/CacheStrategy;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object p1

    :catchall_0
    move-exception p1

    move-object v2, v0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 259
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    move-object v4, v2

    move-object v2, p1

    move-object p1, v4

    .line 263
    :goto_0
    :try_start_4
    invoke-static {v2, v1}, Lio/sentry/cache/CacheStrategy;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception p1

    .line 264
    iget-object v1, p0, Lio/sentry/cache/CacheStrategy;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v3, "Failed to deserialize the session."

    invoke-interface {v1, v2, v3, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private saveNewEnvelope(Lio/sentry/SentryEnvelope;Ljava/io/File;J)V
    .locals 3
    .param p1    # Lio/sentry/SentryEnvelope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 271
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x0

    .line 272
    :try_start_1
    iget-object v2, p0, Lio/sentry/cache/CacheStrategy;->serializer:Lio/sentry/ISerializer;

    invoke-interface {v2, p1, v0}, Lio/sentry/ISerializer;->serialize(Lio/sentry/SentryEnvelope;Ljava/io/OutputStream;)V

    .line 274
    invoke-virtual {p2, p3, p4}, Ljava/io/File;->setLastModified(J)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 275
    :try_start_2
    invoke-static {v1, v0}, Lio/sentry/cache/CacheStrategy;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v1, p1

    .line 271
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 275
    :goto_0
    :try_start_4
    invoke-static {v1, v0}, Lio/sentry/cache/CacheStrategy;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception p1

    .line 276
    iget-object p2, p0, Lio/sentry/cache/CacheStrategy;->options:Lio/sentry/SentryOptions;

    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p2

    sget-object p3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string p4, "Failed to serialize the new envelope to the disk."

    invoke-interface {p2, p3, p4, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method private sortFilesOldestToNewest([Ljava/io/File;)V
    .locals 2
    .param p1    # [Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 81
    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 82
    sget-object v0, Lio/sentry/cache/-$$Lambda$CacheStrategy$vtbFyy0YlpKkCL4ESa4Q9QK9zEw;->INSTANCE:Lio/sentry/cache/-$$Lambda$CacheStrategy$vtbFyy0YlpKkCL4ESa4Q9QK9zEw;

    invoke-static {p1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected isDirectoryValid()Z
    .locals 6

    .line 62
    iget-object v0, p0, Lio/sentry/cache/CacheStrategy;->directory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/sentry/cache/CacheStrategy;->directory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/sentry/cache/CacheStrategy;->directory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    .line 63
    :cond_1
    :goto_0
    iget-object v0, p0, Lio/sentry/cache/CacheStrategy;->options:Lio/sentry/SentryOptions;

    .line 64
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v3, "The directory for caching files is inaccessible.: %s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lio/sentry/cache/CacheStrategy;->directory:Ljava/io/File;

    .line 68
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v1, v5

    .line 65
    invoke-interface {v0, v2, v3, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method

.method protected rotateCacheIfNeeded([Ljava/io/File;)V
    .locals 10
    .param p1    # [Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 92
    array-length v0, p1

    .line 93
    iget v1, p0, Lio/sentry/cache/CacheStrategy;->maxSize:I

    if-lt v0, v1, :cond_1

    .line 94
    iget-object v1, p0, Lio/sentry/cache/CacheStrategy;->options:Lio/sentry/SentryOptions;

    .line 95
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v3, "Cache folder if full (respecting maxSize). Rotating files"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    .line 96
    invoke-interface {v1, v2, v3, v5}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    iget v1, p0, Lio/sentry/cache/CacheStrategy;->maxSize:I

    sub-int v1, v0, v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 99
    invoke-direct {p0, p1}, Lio/sentry/cache/CacheStrategy;->sortFilesOldestToNewest([Ljava/io/File;)V

    .line 101
    invoke-static {p1, v1, v0}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/io/File;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 105
    aget-object v5, p1, v3

    .line 108
    invoke-direct {p0, v5, v0}, Lio/sentry/cache/CacheStrategy;->moveInitFlagIfNecessary(Ljava/io/File;[Ljava/io/File;)V

    .line 110
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_0

    .line 111
    iget-object v6, p0, Lio/sentry/cache/CacheStrategy;->options:Lio/sentry/SentryOptions;

    .line 112
    invoke-virtual {v6}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v6

    sget-object v7, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v8, "File can\'t be deleted: %s"

    new-array v9, v2, [Ljava/lang/Object;

    .line 113
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v9, v4

    invoke-interface {v6, v7, v8, v9}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
