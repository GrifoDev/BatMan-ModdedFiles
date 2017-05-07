.class Lorg/simpleframework/xml/core/ObjectFactory;
.super Lorg/simpleframework/xml/core/PrimitiveFactory;
.source "ObjectFactory.java"


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/core/PrimitiveFactory;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public getInstance(Lorg/simpleframework/xml/stream/InputNode;)Lorg/simpleframework/xml/core/Instance;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v4, 0x0

    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/ObjectFactory;->getOverride(Lorg/simpleframework/xml/stream/InputNode;)Lorg/simpleframework/xml/strategy/Value;

    move-result-object v0

    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ObjectFactory;->getType()Ljava/lang/Class;

    move-result-object v1

    if-eqz v0, :cond_0

    new-instance v1, Lorg/simpleframework/xml/core/ObjectInstance;

    iget-object v2, p0, Lorg/simpleframework/xml/core/ObjectFactory;->context:Lorg/simpleframework/xml/core/Context;

    invoke-direct {v1, v2, v0}, Lorg/simpleframework/xml/core/ObjectInstance;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Value;)V

    return-object v1

    :cond_0
    invoke-static {v1}, Lorg/simpleframework/xml/core/ObjectFactory;->isInstantiable(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/simpleframework/xml/core/ObjectFactory;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v0, v1}, Lorg/simpleframework/xml/core/Context;->getInstance(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Instance;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Lorg/simpleframework/xml/core/InstantiationException;

    const-string/jumbo v2, "Cannot instantiate %s for %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    const/4 v1, 0x1

    iget-object v4, p0, Lorg/simpleframework/xml/core/ObjectFactory;->type:Lorg/simpleframework/xml/strategy/Type;

    aput-object v4, v3, v1

    invoke-direct {v0, v2, v3}, Lorg/simpleframework/xml/core/InstantiationException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method
