.class public final Lio/sentry/GsonSerializer;
.super Ljava/lang/Object;
.source "GsonSerializer.java"

# interfaces
.implements Lio/sentry/ISerializer;


# static fields
.field private static final UTF_8:Ljava/nio/charset/Charset;


# instance fields
.field private final envelopeReader:Lio/sentry/IEnvelopeReader;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final gson:Lcom/google/gson/Gson;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final logger:Lio/sentry/ILogger;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 194
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

    .line 49
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lio/sentry/GsonSerializer;->UTF_8:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Lio/sentry/ILogger;Lio/sentry/IEnvelopeReader;)V
    .locals 1
    .param p1    # Lio/sentry/ILogger;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/sentry/IEnvelopeReader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "The ILogger object is required."

    .line 68
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/ILogger;

    iput-object p1, p0, Lio/sentry/GsonSerializer;->logger:Lio/sentry/ILogger;

    const-string p1, "The IEnvelopeReader object is required."

    .line 70
    invoke-static {p2, p1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/IEnvelopeReader;

    iput-object p1, p0, Lio/sentry/GsonSerializer;->envelopeReader:Lio/sentry/IEnvelopeReader;

    .line 72
    invoke-direct {p0}, Lio/sentry/GsonSerializer;->provideGson()Lcom/google/gson/Gson;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/GsonSerializer;->gson:Lcom/google/gson/Gson;

    return-void
.end method

.method private provideGson()Lcom/google/gson/Gson;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 81
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    sget-object v1, Lcom/google/gson/FieldNamingPolicy;->LOWER_CASE_WITH_UNDERSCORES:Lcom/google/gson/FieldNamingPolicy;

    .line 82
    invoke-virtual {v0, v1}, Lcom/google/gson/GsonBuilder;->setFieldNamingPolicy(Lcom/google/gson/FieldNamingPolicy;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    const-class v1, Lio/sentry/protocol/SentryId;

    new-instance v2, Lio/sentry/adapters/SentryIdSerializerAdapter;

    iget-object v3, p0, Lio/sentry/GsonSerializer;->logger:Lio/sentry/ILogger;

    invoke-direct {v2, v3}, Lio/sentry/adapters/SentryIdSerializerAdapter;-><init>(Lio/sentry/ILogger;)V

    .line 83
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    const-class v1, Lio/sentry/protocol/SentryId;

    new-instance v2, Lio/sentry/adapters/SentryIdDeserializerAdapter;

    iget-object v3, p0, Lio/sentry/GsonSerializer;->logger:Lio/sentry/ILogger;

    invoke-direct {v2, v3}, Lio/sentry/adapters/SentryIdDeserializerAdapter;-><init>(Lio/sentry/ILogger;)V

    .line 84
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    const-class v1, Ljava/util/Date;

    new-instance v2, Lio/sentry/adapters/DateSerializerAdapter;

    iget-object v3, p0, Lio/sentry/GsonSerializer;->logger:Lio/sentry/ILogger;

    invoke-direct {v2, v3}, Lio/sentry/adapters/DateSerializerAdapter;-><init>(Lio/sentry/ILogger;)V

    .line 85
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    const-class v1, Ljava/util/Date;

    new-instance v2, Lio/sentry/adapters/DateDeserializerAdapter;

    iget-object v3, p0, Lio/sentry/GsonSerializer;->logger:Lio/sentry/ILogger;

    invoke-direct {v2, v3}, Lio/sentry/adapters/DateDeserializerAdapter;-><init>(Lio/sentry/ILogger;)V

    .line 86
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    const-class v1, Ljava/util/TimeZone;

    new-instance v2, Lio/sentry/adapters/TimeZoneSerializerAdapter;

    iget-object v3, p0, Lio/sentry/GsonSerializer;->logger:Lio/sentry/ILogger;

    invoke-direct {v2, v3}, Lio/sentry/adapters/TimeZoneSerializerAdapter;-><init>(Lio/sentry/ILogger;)V

    .line 87
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    const-class v1, Ljava/util/TimeZone;

    new-instance v2, Lio/sentry/adapters/TimeZoneDeserializerAdapter;

    iget-object v3, p0, Lio/sentry/GsonSerializer;->logger:Lio/sentry/ILogger;

    invoke-direct {v2, v3}, Lio/sentry/adapters/TimeZoneDeserializerAdapter;-><init>(Lio/sentry/ILogger;)V

    .line 88
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    const-class v1, Lio/sentry/protocol/Device$DeviceOrientation;

    new-instance v2, Lio/sentry/adapters/OrientationSerializerAdapter;

    iget-object v3, p0, Lio/sentry/GsonSerializer;->logger:Lio/sentry/ILogger;

    invoke-direct {v2, v3}, Lio/sentry/adapters/OrientationSerializerAdapter;-><init>(Lio/sentry/ILogger;)V

    .line 89
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    const-class v1, Lio/sentry/protocol/Device$DeviceOrientation;

    new-instance v2, Lio/sentry/adapters/OrientationDeserializerAdapter;

    iget-object v3, p0, Lio/sentry/GsonSerializer;->logger:Lio/sentry/ILogger;

    invoke-direct {v2, v3}, Lio/sentry/adapters/OrientationDeserializerAdapter;-><init>(Lio/sentry/ILogger;)V

    .line 91
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    const-class v1, Lio/sentry/SentryLevel;

    new-instance v2, Lio/sentry/adapters/SentryLevelSerializerAdapter;

    iget-object v3, p0, Lio/sentry/GsonSerializer;->logger:Lio/sentry/ILogger;

    invoke-direct {v2, v3}, Lio/sentry/adapters/SentryLevelSerializerAdapter;-><init>(Lio/sentry/ILogger;)V

    .line 93
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    const-class v1, Lio/sentry/SentryLevel;

    new-instance v2, Lio/sentry/adapters/SentryLevelDeserializerAdapter;

    iget-object v3, p0, Lio/sentry/GsonSerializer;->logger:Lio/sentry/ILogger;

    invoke-direct {v2, v3}, Lio/sentry/adapters/SentryLevelDeserializerAdapter;-><init>(Lio/sentry/ILogger;)V

    .line 94
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    const-class v1, Lio/sentry/protocol/Contexts;

    new-instance v2, Lio/sentry/adapters/ContextsDeserializerAdapter;

    iget-object v3, p0, Lio/sentry/GsonSerializer;->logger:Lio/sentry/ILogger;

    invoke-direct {v2, v3}, Lio/sentry/adapters/ContextsDeserializerAdapter;-><init>(Lio/sentry/ILogger;)V

    .line 95
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    const-class v1, Lio/sentry/protocol/Contexts;

    new-instance v2, Lio/sentry/adapters/ContextsSerializerAdapter;

    iget-object v3, p0, Lio/sentry/GsonSerializer;->logger:Lio/sentry/ILogger;

    invoke-direct {v2, v3}, Lio/sentry/adapters/ContextsSerializerAdapter;-><init>(Lio/sentry/ILogger;)V

    .line 96
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 97
    invoke-static {}, Lio/sentry/UnknownPropertiesTypeAdapterFactory;->get()Lcom/google/gson/TypeAdapterFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/GsonBuilder;->registerTypeAdapterFactory(Lcom/google/gson/TypeAdapterFactory;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    const-class v1, Lio/sentry/SentryEnvelopeHeader;

    new-instance v2, Lio/sentry/SentryEnvelopeHeaderAdapter;

    invoke-direct {v2}, Lio/sentry/SentryEnvelopeHeaderAdapter;-><init>()V

    .line 98
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    const-class v1, Lio/sentry/SentryEnvelopeItemHeader;

    new-instance v2, Lio/sentry/SentryEnvelopeItemHeaderAdapter;

    invoke-direct {v2}, Lio/sentry/SentryEnvelopeItemHeaderAdapter;-><init>()V

    .line 99
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    const-class v1, Lio/sentry/Session;

    new-instance v2, Lio/sentry/SessionAdapter;

    iget-object v3, p0, Lio/sentry/GsonSerializer;->logger:Lio/sentry/ILogger;

    invoke-direct {v2, v3}, Lio/sentry/SessionAdapter;-><init>(Lio/sentry/ILogger;)V

    .line 100
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    const-class v1, Lio/sentry/SpanId;

    new-instance v2, Lio/sentry/adapters/SpanIdDeserializerAdapter;

    iget-object v3, p0, Lio/sentry/GsonSerializer;->logger:Lio/sentry/ILogger;

    invoke-direct {v2, v3}, Lio/sentry/adapters/SpanIdDeserializerAdapter;-><init>(Lio/sentry/ILogger;)V

    .line 101
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    const-class v1, Lio/sentry/SpanId;

    new-instance v2, Lio/sentry/adapters/SpanIdSerializerAdapter;

    iget-object v3, p0, Lio/sentry/GsonSerializer;->logger:Lio/sentry/ILogger;

    invoke-direct {v2, v3}, Lio/sentry/adapters/SpanIdSerializerAdapter;-><init>(Lio/sentry/ILogger;)V

    .line 102
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    const-class v1, Lio/sentry/SpanStatus;

    new-instance v2, Lio/sentry/adapters/SpanStatusDeserializerAdapter;

    iget-object v3, p0, Lio/sentry/GsonSerializer;->logger:Lio/sentry/ILogger;

    invoke-direct {v2, v3}, Lio/sentry/adapters/SpanStatusDeserializerAdapter;-><init>(Lio/sentry/ILogger;)V

    .line 103
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    const-class v1, Lio/sentry/SpanStatus;

    new-instance v2, Lio/sentry/adapters/SpanStatusSerializerAdapter;

    iget-object v3, p0, Lio/sentry/GsonSerializer;->logger:Lio/sentry/ILogger;

    invoke-direct {v2, v3}, Lio/sentry/adapters/SpanStatusSerializerAdapter;-><init>(Lio/sentry/ILogger;)V

    .line 104
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    const-class v1, Ljava/util/Collection;

    new-instance v2, Lio/sentry/adapters/CollectionAdapter;

    invoke-direct {v2}, Lio/sentry/adapters/CollectionAdapter;-><init>()V

    .line 105
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeHierarchyAdapter(Ljava/lang/Class;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    const-class v1, Ljava/util/Map;

    new-instance v2, Lio/sentry/adapters/MapAdapter;

    invoke-direct {v2}, Lio/sentry/adapters/MapAdapter;-><init>()V

    .line 106
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeHierarchyAdapter(Ljava/lang/Class;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 107
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public deserialize(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/io/Reader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "The Reader object is required."

    .line 120
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "The Class type is required."

    .line 121
    invoke-static {p2, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 123
    iget-object v0, p0, Lio/sentry/GsonSerializer;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public deserializeEnvelope(Ljava/io/InputStream;)Lio/sentry/SentryEnvelope;
    .locals 3
    .param p1    # Ljava/io/InputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "The InputStream object is required."

    .line 134
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 136
    :try_start_0
    iget-object v0, p0, Lio/sentry/GsonSerializer;->envelopeReader:Lio/sentry/IEnvelopeReader;

    invoke-interface {v0, p1}, Lio/sentry/IEnvelopeReader;->read(Ljava/io/InputStream;)Lio/sentry/SentryEnvelope;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 138
    iget-object v0, p0, Lio/sentry/GsonSerializer;->logger:Lio/sentry/ILogger;

    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v2, "Error deserializing envelope."

    invoke-interface {v0, v1, v2, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public serialize(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "The SentryEnvelope object is required."

    .line 206
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 208
    iget-object v0, p0, Lio/sentry/GsonSerializer;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public serialize(Lio/sentry/SentryEnvelope;Ljava/io/OutputStream;)V
    .locals 8
    .param p1    # Lio/sentry/SentryEnvelope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/OutputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "The SentryEnvelope object is required."

    .line 168
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "The Stream object is required."

    .line 169
    invoke-static {p2, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 171
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v1, 0x0

    .line 172
    :try_start_0
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    sget-object v4, Lio/sentry/GsonSerializer;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v0, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 174
    :try_start_1
    iget-object v3, p0, Lio/sentry/GsonSerializer;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p1}, Lio/sentry/SentryEnvelope;->getHeader()Lio/sentry/SentryEnvelopeHeader;

    move-result-object v4

    const-class v5, Lio/sentry/SentryEnvelopeHeader;

    invoke-virtual {v3, v4, v5, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V

    const-string v3, "\n"

    .line 175
    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p1}, Lio/sentry/SentryEnvelope;->getItems()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/sentry/SentryEnvelopeItem;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 180
    :try_start_2
    invoke-virtual {v3}, Lio/sentry/SentryEnvelopeItem;->getData()[B

    move-result-object v4

    .line 182
    iget-object v5, p0, Lio/sentry/GsonSerializer;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v3}, Lio/sentry/SentryEnvelopeItem;->getHeader()Lio/sentry/SentryEnvelopeItemHeader;

    move-result-object v3

    const-class v6, Lio/sentry/SentryEnvelopeItemHeader;

    invoke-virtual {v5, v3, v6, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V

    const-string v3, "\n"

    .line 183
    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 184
    invoke-virtual {v2}, Ljava/io/Writer;->flush()V

    .line 186
    invoke-virtual {p2, v4}, Ljava/io/OutputStream;->write([B)V

    const-string v3, "\n"

    .line 188
    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 190
    :try_start_3
    iget-object v4, p0, Lio/sentry/GsonSerializer;->logger:Lio/sentry/ILogger;

    sget-object v5, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v6, "Failed to create envelope item. Dropping it."

    invoke-interface {v4, v5, v6, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 193
    :cond_0
    invoke-virtual {v2}, Ljava/io/Writer;->flush()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 194
    :try_start_4
    invoke-static {v1, v2}, Lio/sentry/GsonSerializer;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-static {v1, v0}, Lio/sentry/GsonSerializer;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    return-void

    :catchall_0
    move-exception p1

    move-object p2, v1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 171
    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p2

    move-object v7, p2

    move-object p2, p1

    move-object p1, v7

    .line 194
    :goto_1
    :try_start_6
    invoke-static {p2, v2}, Lio/sentry/GsonSerializer;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw p1
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    goto :goto_2

    :catch_2
    move-exception p1

    move-object v1, p1

    .line 171
    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 194
    :goto_2
    invoke-static {v1, v0}, Lio/sentry/GsonSerializer;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw p1
.end method

.method public serialize(Ljava/lang/Object;Ljava/io/Writer;)V
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/Writer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/io/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "The entity is required."

    .line 146
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "The Writer object is required."

    .line 147
    invoke-static {p2, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 149
    iget-object v0, p0, Lio/sentry/GsonSerializer;->logger:Lio/sentry/ILogger;

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    invoke-interface {v0, v1}, Lio/sentry/ILogger;->isEnabled(Lio/sentry/SentryLevel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lio/sentry/GsonSerializer;->logger:Lio/sentry/ILogger;

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v2, "Serializing object: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lio/sentry/GsonSerializer;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v5, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v0, v1, v2, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    :cond_0
    iget-object v0, p0, Lio/sentry/GsonSerializer;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V

    .line 154
    invoke-virtual {p2}, Ljava/io/Writer;->flush()V

    return-void
.end method
