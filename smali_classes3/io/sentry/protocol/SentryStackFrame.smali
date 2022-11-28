.class public final Lio/sentry/protocol/SentryStackFrame;
.super Ljava/lang/Object;
.source "SentryStackFrame.java"

# interfaces
.implements Lio/sentry/IUnknownPropertiesConsumer;


# instance fields
.field private _native:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "native"
    .end annotation
.end field

.field private _package:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "package"
    .end annotation
.end field

.field private absPath:Ljava/lang/String;

.field private colno:Ljava/lang/Integer;

.field private contextLine:Ljava/lang/String;

.field private filename:Ljava/lang/String;

.field private framesOmitted:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private function:Ljava/lang/String;

.field private imageAddr:Ljava/lang/String;

.field private inApp:Ljava/lang/Boolean;

.field private instructionAddr:Ljava/lang/String;

.field private lineno:Ljava/lang/Integer;

.field private module:Ljava/lang/String;

.field private platform:Ljava/lang/String;

.field private postContext:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private preContext:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private rawFunction:Ljava/lang/String;

.field private symbolAddr:Ljava/lang/String;

.field private unknown:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private vars:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public acceptUnknownProperties(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/ApiStatus$Internal;
    .end annotation

    .line 259
    iput-object p1, p0, Lio/sentry/protocol/SentryStackFrame;->unknown:Ljava/util/Map;

    return-void
.end method

.method public getAbsPath()Ljava/lang/String;
    .locals 1

    .line 185
    iget-object v0, p0, Lio/sentry/protocol/SentryStackFrame;->absPath:Ljava/lang/String;

    return-object v0
.end method

.method public getColno()Ljava/lang/Integer;
    .locals 1

    .line 177
    iget-object v0, p0, Lio/sentry/protocol/SentryStackFrame;->colno:Ljava/lang/Integer;

    return-object v0
.end method

.method public getContextLine()Ljava/lang/String;
    .locals 1

    .line 193
    iget-object v0, p0, Lio/sentry/protocol/SentryStackFrame;->contextLine:Ljava/lang/String;

    return-object v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .line 145
    iget-object v0, p0, Lio/sentry/protocol/SentryStackFrame;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public getFramesOmitted()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lio/sentry/protocol/SentryStackFrame;->framesOmitted:Ljava/util/List;

    return-object v0
.end method

.method public getFunction()Ljava/lang/String;
    .locals 1

    .line 153
    iget-object v0, p0, Lio/sentry/protocol/SentryStackFrame;->function:Ljava/lang/String;

    return-object v0
.end method

.method public getImageAddr()Ljava/lang/String;
    .locals 1

    .line 225
    iget-object v0, p0, Lio/sentry/protocol/SentryStackFrame;->imageAddr:Ljava/lang/String;

    return-object v0
.end method

.method public getInstructionAddr()Ljava/lang/String;
    .locals 1

    .line 241
    iget-object v0, p0, Lio/sentry/protocol/SentryStackFrame;->instructionAddr:Ljava/lang/String;

    return-object v0
.end method

.method public getLineno()Ljava/lang/Integer;
    .locals 1

    .line 169
    iget-object v0, p0, Lio/sentry/protocol/SentryStackFrame;->lineno:Ljava/lang/Integer;

    return-object v0
.end method

.method public getModule()Ljava/lang/String;
    .locals 1

    .line 161
    iget-object v0, p0, Lio/sentry/protocol/SentryStackFrame;->module:Ljava/lang/String;

    return-object v0
.end method

.method public getPackage()Ljava/lang/String;
    .locals 1

    .line 209
    iget-object v0, p0, Lio/sentry/protocol/SentryStackFrame;->_package:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatform()Ljava/lang/String;
    .locals 1

    .line 217
    iget-object v0, p0, Lio/sentry/protocol/SentryStackFrame;->platform:Ljava/lang/String;

    return-object v0
.end method

.method public getPostContext()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lio/sentry/protocol/SentryStackFrame;->postContext:Ljava/util/List;

    return-object v0
.end method

.method public getPreContext()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lio/sentry/protocol/SentryStackFrame;->preContext:Ljava/util/List;

    return-object v0
.end method

.method public getRawFunction()Ljava/lang/String;
    .locals 1

    .line 263
    iget-object v0, p0, Lio/sentry/protocol/SentryStackFrame;->rawFunction:Ljava/lang/String;

    return-object v0
.end method

.method public getSymbolAddr()Ljava/lang/String;
    .locals 1

    .line 233
    iget-object v0, p0, Lio/sentry/protocol/SentryStackFrame;->symbolAddr:Ljava/lang/String;

    return-object v0
.end method

.method public getVars()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lio/sentry/protocol/SentryStackFrame;->vars:Ljava/util/Map;

    return-object v0
.end method

.method public isInApp()Ljava/lang/Boolean;
    .locals 1

    .line 201
    iget-object v0, p0, Lio/sentry/protocol/SentryStackFrame;->inApp:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isNative()Ljava/lang/Boolean;
    .locals 1

    .line 249
    iget-object v0, p0, Lio/sentry/protocol/SentryStackFrame;->_native:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setAbsPath(Ljava/lang/String;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lio/sentry/protocol/SentryStackFrame;->absPath:Ljava/lang/String;

    return-void
.end method

.method public setColno(Ljava/lang/Integer;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lio/sentry/protocol/SentryStackFrame;->colno:Ljava/lang/Integer;

    return-void
.end method

.method public setContextLine(Ljava/lang/String;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lio/sentry/protocol/SentryStackFrame;->contextLine:Ljava/lang/String;

    return-void
.end method

.method public setFilename(Ljava/lang/String;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lio/sentry/protocol/SentryStackFrame;->filename:Ljava/lang/String;

    return-void
.end method

.method public setFramesOmitted(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 141
    iput-object p1, p0, Lio/sentry/protocol/SentryStackFrame;->framesOmitted:Ljava/util/List;

    return-void
.end method

.method public setFunction(Ljava/lang/String;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lio/sentry/protocol/SentryStackFrame;->function:Ljava/lang/String;

    return-void
.end method

.method public setImageAddr(Ljava/lang/String;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lio/sentry/protocol/SentryStackFrame;->imageAddr:Ljava/lang/String;

    return-void
.end method

.method public setInApp(Ljava/lang/Boolean;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lio/sentry/protocol/SentryStackFrame;->inApp:Ljava/lang/Boolean;

    return-void
.end method

.method public setInstructionAddr(Ljava/lang/String;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lio/sentry/protocol/SentryStackFrame;->instructionAddr:Ljava/lang/String;

    return-void
.end method

.method public setLineno(Ljava/lang/Integer;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lio/sentry/protocol/SentryStackFrame;->lineno:Ljava/lang/Integer;

    return-void
.end method

.method public setModule(Ljava/lang/String;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lio/sentry/protocol/SentryStackFrame;->module:Ljava/lang/String;

    return-void
.end method

.method public setNative(Ljava/lang/Boolean;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lio/sentry/protocol/SentryStackFrame;->_native:Ljava/lang/Boolean;

    return-void
.end method

.method public setPackage(Ljava/lang/String;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lio/sentry/protocol/SentryStackFrame;->_package:Ljava/lang/String;

    return-void
.end method

.method public setPlatform(Ljava/lang/String;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lio/sentry/protocol/SentryStackFrame;->platform:Ljava/lang/String;

    return-void
.end method

.method public setPostContext(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 125
    iput-object p1, p0, Lio/sentry/protocol/SentryStackFrame;->postContext:Ljava/util/List;

    return-void
.end method

.method public setPreContext(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 117
    iput-object p1, p0, Lio/sentry/protocol/SentryStackFrame;->preContext:Ljava/util/List;

    return-void
.end method

.method public setRawFunction(Ljava/lang/String;)V
    .locals 0

    .line 267
    iput-object p1, p0, Lio/sentry/protocol/SentryStackFrame;->rawFunction:Ljava/lang/String;

    return-void
.end method

.method public setSymbolAddr(Ljava/lang/String;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lio/sentry/protocol/SentryStackFrame;->symbolAddr:Ljava/lang/String;

    return-void
.end method

.method public setVars(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 133
    iput-object p1, p0, Lio/sentry/protocol/SentryStackFrame;->vars:Ljava/util/Map;

    return-void
.end method
