.class public Lcom/samsung/android/rlc/util/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field private static final DECODE_TABLE:[B

.field private static final ENCODE_TABLE:[B

.field private static final URL_SAFE_ENCODE_TABLE:[B


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/16 v7, 0x33

    const/16 v6, 0x32

    const/16 v5, 0x31

    const/16 v4, 0x30

    const/4 v3, -0x1

    const/16 v0, 0x40

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x41

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x42

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x43

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x44

    aput-byte v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x45

    aput-byte v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x46

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x47

    aput-byte v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x48

    aput-byte v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x49

    aput-byte v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x4a

    aput-byte v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x4b

    aput-byte v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x4c

    aput-byte v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x4d

    aput-byte v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x4e

    aput-byte v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x4f

    aput-byte v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x50

    aput-byte v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0x51

    aput-byte v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0x52

    aput-byte v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x53

    aput-byte v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x54

    aput-byte v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x55

    aput-byte v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0x56

    aput-byte v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0x57

    aput-byte v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0x58

    aput-byte v2, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0x59

    aput-byte v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0x5a

    aput-byte v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0x61

    aput-byte v2, v0, v1

    const/16 v1, 0x1b

    const/16 v2, 0x62

    aput-byte v2, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0x63

    aput-byte v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0x64

    aput-byte v2, v0, v1

    const/16 v1, 0x1e

    const/16 v2, 0x65

    aput-byte v2, v0, v1

    const/16 v1, 0x1f

    const/16 v2, 0x66

    aput-byte v2, v0, v1

    const/16 v1, 0x20

    const/16 v2, 0x67

    aput-byte v2, v0, v1

    const/16 v1, 0x21

    const/16 v2, 0x68

    aput-byte v2, v0, v1

    const/16 v1, 0x22

    const/16 v2, 0x69

    aput-byte v2, v0, v1

    const/16 v1, 0x23

    const/16 v2, 0x6a

    aput-byte v2, v0, v1

    const/16 v1, 0x24

    const/16 v2, 0x6b

    aput-byte v2, v0, v1

    const/16 v1, 0x25

    const/16 v2, 0x6c

    aput-byte v2, v0, v1

    const/16 v1, 0x26

    const/16 v2, 0x6d

    aput-byte v2, v0, v1

    const/16 v1, 0x27

    const/16 v2, 0x6e

    aput-byte v2, v0, v1

    const/16 v1, 0x28

    const/16 v2, 0x6f

    aput-byte v2, v0, v1

    const/16 v1, 0x29

    const/16 v2, 0x70

    aput-byte v2, v0, v1

    const/16 v1, 0x2a

    const/16 v2, 0x71

    aput-byte v2, v0, v1

    const/16 v1, 0x2b

    const/16 v2, 0x72

    aput-byte v2, v0, v1

    const/16 v1, 0x2c

    const/16 v2, 0x73

    aput-byte v2, v0, v1

    const/16 v1, 0x2d

    const/16 v2, 0x74

    aput-byte v2, v0, v1

    const/16 v1, 0x2e

    const/16 v2, 0x75

    aput-byte v2, v0, v1

    const/16 v1, 0x2f

    const/16 v2, 0x76

    aput-byte v2, v0, v1

    const/16 v1, 0x77

    aput-byte v1, v0, v4

    const/16 v1, 0x78

    aput-byte v1, v0, v5

    const/16 v1, 0x79

    aput-byte v1, v0, v6

    const/16 v1, 0x7a

    aput-byte v1, v0, v7

    const/16 v1, 0x34

    aput-byte v4, v0, v1

    const/16 v1, 0x35

    aput-byte v5, v0, v1

    const/16 v1, 0x36

    aput-byte v6, v0, v1

    const/16 v1, 0x37

    aput-byte v7, v0, v1

    const/16 v1, 0x38

    const/16 v2, 0x34

    aput-byte v2, v0, v1

    const/16 v1, 0x39

    const/16 v2, 0x35

    aput-byte v2, v0, v1

    const/16 v1, 0x3a

    const/16 v2, 0x36

    aput-byte v2, v0, v1

    const/16 v1, 0x3b

    const/16 v2, 0x37

    aput-byte v2, v0, v1

    const/16 v1, 0x3c

    const/16 v2, 0x38

    aput-byte v2, v0, v1

    const/16 v1, 0x3d

    const/16 v2, 0x39

    aput-byte v2, v0, v1

    const/16 v1, 0x3e

    const/16 v2, 0x2b

    aput-byte v2, v0, v1

    const/16 v1, 0x3f

    const/16 v2, 0x2f

    aput-byte v2, v0, v1

    sput-object v0, Lcom/samsung/android/rlc/util/Base64;->ENCODE_TABLE:[B

    const/16 v0, 0x40

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x41

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x42

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x43

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x44

    aput-byte v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x45

    aput-byte v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x46

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x47

    aput-byte v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x48

    aput-byte v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x49

    aput-byte v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x4a

    aput-byte v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x4b

    aput-byte v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x4c

    aput-byte v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x4d

    aput-byte v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x4e

    aput-byte v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x4f

    aput-byte v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x50

    aput-byte v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0x51

    aput-byte v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0x52

    aput-byte v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x53

    aput-byte v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x54

    aput-byte v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x55

    aput-byte v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0x56

    aput-byte v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0x57

    aput-byte v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0x58

    aput-byte v2, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0x59

    aput-byte v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0x5a

    aput-byte v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0x61

    aput-byte v2, v0, v1

    const/16 v1, 0x1b

    const/16 v2, 0x62

    aput-byte v2, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0x63

    aput-byte v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0x64

    aput-byte v2, v0, v1

    const/16 v1, 0x1e

    const/16 v2, 0x65

    aput-byte v2, v0, v1

    const/16 v1, 0x1f

    const/16 v2, 0x66

    aput-byte v2, v0, v1

    const/16 v1, 0x20

    const/16 v2, 0x67

    aput-byte v2, v0, v1

    const/16 v1, 0x21

    const/16 v2, 0x68

    aput-byte v2, v0, v1

    const/16 v1, 0x22

    const/16 v2, 0x69

    aput-byte v2, v0, v1

    const/16 v1, 0x23

    const/16 v2, 0x6a

    aput-byte v2, v0, v1

    const/16 v1, 0x24

    const/16 v2, 0x6b

    aput-byte v2, v0, v1

    const/16 v1, 0x25

    const/16 v2, 0x6c

    aput-byte v2, v0, v1

    const/16 v1, 0x26

    const/16 v2, 0x6d

    aput-byte v2, v0, v1

    const/16 v1, 0x27

    const/16 v2, 0x6e

    aput-byte v2, v0, v1

    const/16 v1, 0x28

    const/16 v2, 0x6f

    aput-byte v2, v0, v1

    const/16 v1, 0x29

    const/16 v2, 0x70

    aput-byte v2, v0, v1

    const/16 v1, 0x2a

    const/16 v2, 0x71

    aput-byte v2, v0, v1

    const/16 v1, 0x2b

    const/16 v2, 0x72

    aput-byte v2, v0, v1

    const/16 v1, 0x2c

    const/16 v2, 0x73

    aput-byte v2, v0, v1

    const/16 v1, 0x2d

    const/16 v2, 0x74

    aput-byte v2, v0, v1

    const/16 v1, 0x2e

    const/16 v2, 0x75

    aput-byte v2, v0, v1

    const/16 v1, 0x2f

    const/16 v2, 0x76

    aput-byte v2, v0, v1

    const/16 v1, 0x77

    aput-byte v1, v0, v4

    const/16 v1, 0x78

    aput-byte v1, v0, v5

    const/16 v1, 0x79

    aput-byte v1, v0, v6

    const/16 v1, 0x7a

    aput-byte v1, v0, v7

    const/16 v1, 0x34

    aput-byte v4, v0, v1

    const/16 v1, 0x35

    aput-byte v5, v0, v1

    const/16 v1, 0x36

    aput-byte v6, v0, v1

    const/16 v1, 0x37

    aput-byte v7, v0, v1

    const/16 v1, 0x38

    const/16 v2, 0x34

    aput-byte v2, v0, v1

    const/16 v1, 0x39

    const/16 v2, 0x35

    aput-byte v2, v0, v1

    const/16 v1, 0x3a

    const/16 v2, 0x36

    aput-byte v2, v0, v1

    const/16 v1, 0x3b

    const/16 v2, 0x37

    aput-byte v2, v0, v1

    const/16 v1, 0x3c

    const/16 v2, 0x38

    aput-byte v2, v0, v1

    const/16 v1, 0x3d

    const/16 v2, 0x39

    aput-byte v2, v0, v1

    const/16 v1, 0x3e

    const/16 v2, 0x2d

    aput-byte v2, v0, v1

    const/16 v1, 0x3f

    const/16 v2, 0x5f

    aput-byte v2, v0, v1

    sput-object v0, Lcom/samsung/android/rlc/util/Base64;->URL_SAFE_ENCODE_TABLE:[B

    const/16 v0, 0x7b

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v3, v0, v1

    const/4 v1, 0x1

    aput-byte v3, v0, v1

    const/4 v1, 0x2

    aput-byte v3, v0, v1

    const/4 v1, 0x3

    aput-byte v3, v0, v1

    const/4 v1, 0x4

    aput-byte v3, v0, v1

    const/4 v1, 0x5

    aput-byte v3, v0, v1

    const/4 v1, 0x6

    aput-byte v3, v0, v1

    const/4 v1, 0x7

    aput-byte v3, v0, v1

    const/16 v1, 0x8

    aput-byte v3, v0, v1

    const/16 v1, 0x9

    aput-byte v3, v0, v1

    const/16 v1, 0xa

    aput-byte v3, v0, v1

    const/16 v1, 0xb

    aput-byte v3, v0, v1

    const/16 v1, 0xc

    aput-byte v3, v0, v1

    const/16 v1, 0xd

    aput-byte v3, v0, v1

    const/16 v1, 0xe

    aput-byte v3, v0, v1

    const/16 v1, 0xf

    aput-byte v3, v0, v1

    const/16 v1, 0x10

    aput-byte v3, v0, v1

    const/16 v1, 0x11

    aput-byte v3, v0, v1

    const/16 v1, 0x12

    aput-byte v3, v0, v1

    const/16 v1, 0x13

    aput-byte v3, v0, v1

    const/16 v1, 0x14

    aput-byte v3, v0, v1

    const/16 v1, 0x15

    aput-byte v3, v0, v1

    const/16 v1, 0x16

    aput-byte v3, v0, v1

    const/16 v1, 0x17

    aput-byte v3, v0, v1

    const/16 v1, 0x18

    aput-byte v3, v0, v1

    const/16 v1, 0x19

    aput-byte v3, v0, v1

    const/16 v1, 0x1a

    aput-byte v3, v0, v1

    const/16 v1, 0x1b

    aput-byte v3, v0, v1

    const/16 v1, 0x1c

    aput-byte v3, v0, v1

    const/16 v1, 0x1d

    aput-byte v3, v0, v1

    const/16 v1, 0x1e

    aput-byte v3, v0, v1

    const/16 v1, 0x1f

    aput-byte v3, v0, v1

    const/16 v1, 0x20

    aput-byte v3, v0, v1

    const/16 v1, 0x21

    aput-byte v3, v0, v1

    const/16 v1, 0x22

    aput-byte v3, v0, v1

    const/16 v1, 0x23

    aput-byte v3, v0, v1

    const/16 v1, 0x24

    aput-byte v3, v0, v1

    const/16 v1, 0x25

    aput-byte v3, v0, v1

    const/16 v1, 0x26

    aput-byte v3, v0, v1

    const/16 v1, 0x27

    aput-byte v3, v0, v1

    const/16 v1, 0x28

    aput-byte v3, v0, v1

    const/16 v1, 0x29

    aput-byte v3, v0, v1

    const/16 v1, 0x2a

    aput-byte v3, v0, v1

    const/16 v1, 0x2b

    const/16 v2, 0x3e

    aput-byte v2, v0, v1

    const/16 v1, 0x2c

    aput-byte v3, v0, v1

    const/16 v1, 0x2d

    const/16 v2, 0x3e

    aput-byte v2, v0, v1

    const/16 v1, 0x2e

    aput-byte v3, v0, v1

    const/16 v1, 0x2f

    const/16 v2, 0x3f

    aput-byte v2, v0, v1

    const/16 v1, 0x34

    aput-byte v1, v0, v4

    const/16 v1, 0x35

    aput-byte v1, v0, v5

    const/16 v1, 0x36

    aput-byte v1, v0, v6

    const/16 v1, 0x37

    aput-byte v1, v0, v7

    const/16 v1, 0x34

    const/16 v2, 0x38

    aput-byte v2, v0, v1

    const/16 v1, 0x35

    const/16 v2, 0x39

    aput-byte v2, v0, v1

    const/16 v1, 0x36

    const/16 v2, 0x3a

    aput-byte v2, v0, v1

    const/16 v1, 0x37

    const/16 v2, 0x3b

    aput-byte v2, v0, v1

    const/16 v1, 0x38

    const/16 v2, 0x3c

    aput-byte v2, v0, v1

    const/16 v1, 0x39

    const/16 v2, 0x3d

    aput-byte v2, v0, v1

    const/16 v1, 0x3a

    aput-byte v3, v0, v1

    const/16 v1, 0x3b

    aput-byte v3, v0, v1

    const/16 v1, 0x3c

    aput-byte v3, v0, v1

    const/16 v1, 0x3d

    aput-byte v3, v0, v1

    const/16 v1, 0x3e

    aput-byte v3, v0, v1

    const/16 v1, 0x3f

    aput-byte v3, v0, v1

    const/16 v1, 0x40

    aput-byte v3, v0, v1

    const/16 v1, 0x41

    const/4 v2, 0x0

    aput-byte v2, v0, v1

    const/16 v1, 0x42

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    const/16 v1, 0x43

    const/4 v2, 0x2

    aput-byte v2, v0, v1

    const/16 v1, 0x44

    const/4 v2, 0x3

    aput-byte v2, v0, v1

    const/16 v1, 0x45

    const/4 v2, 0x4

    aput-byte v2, v0, v1

    const/16 v1, 0x46

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x47

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x48

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x49

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x4a

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x4b

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x4c

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x4d

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x4e

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x4f

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x50

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x51

    const/16 v2, 0x10

    aput-byte v2, v0, v1

    const/16 v1, 0x52

    const/16 v2, 0x11

    aput-byte v2, v0, v1

    const/16 v1, 0x53

    const/16 v2, 0x12

    aput-byte v2, v0, v1

    const/16 v1, 0x54

    const/16 v2, 0x13

    aput-byte v2, v0, v1

    const/16 v1, 0x55

    const/16 v2, 0x14

    aput-byte v2, v0, v1

    const/16 v1, 0x56

    const/16 v2, 0x15

    aput-byte v2, v0, v1

    const/16 v1, 0x57

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    const/16 v1, 0x58

    const/16 v2, 0x17

    aput-byte v2, v0, v1

    const/16 v1, 0x59

    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x5a

    const/16 v2, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0x5b

    aput-byte v3, v0, v1

    const/16 v1, 0x5c

    aput-byte v3, v0, v1

    const/16 v1, 0x5d

    aput-byte v3, v0, v1

    const/16 v1, 0x5e

    aput-byte v3, v0, v1

    const/16 v1, 0x5f

    const/16 v2, 0x3f

    aput-byte v2, v0, v1

    const/16 v1, 0x60

    aput-byte v3, v0, v1

    const/16 v1, 0x61

    const/16 v2, 0x1a

    aput-byte v2, v0, v1

    const/16 v1, 0x62

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0x63

    const/16 v2, 0x1c

    aput-byte v2, v0, v1

    const/16 v1, 0x64

    const/16 v2, 0x1d

    aput-byte v2, v0, v1

    const/16 v1, 0x65

    const/16 v2, 0x1e

    aput-byte v2, v0, v1

    const/16 v1, 0x66

    const/16 v2, 0x1f

    aput-byte v2, v0, v1

    const/16 v1, 0x67

    const/16 v2, 0x20

    aput-byte v2, v0, v1

    const/16 v1, 0x68

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    const/16 v1, 0x69

    const/16 v2, 0x22

    aput-byte v2, v0, v1

    const/16 v1, 0x6a

    const/16 v2, 0x23

    aput-byte v2, v0, v1

    const/16 v1, 0x6b

    const/16 v2, 0x24

    aput-byte v2, v0, v1

    const/16 v1, 0x6c

    const/16 v2, 0x25

    aput-byte v2, v0, v1

    const/16 v1, 0x6d

    const/16 v2, 0x26

    aput-byte v2, v0, v1

    const/16 v1, 0x6e

    const/16 v2, 0x27

    aput-byte v2, v0, v1

    const/16 v1, 0x6f

    const/16 v2, 0x28

    aput-byte v2, v0, v1

    const/16 v1, 0x70

    const/16 v2, 0x29

    aput-byte v2, v0, v1

    const/16 v1, 0x71

    const/16 v2, 0x2a

    aput-byte v2, v0, v1

    const/16 v1, 0x72

    const/16 v2, 0x2b

    aput-byte v2, v0, v1

    const/16 v1, 0x73

    const/16 v2, 0x2c

    aput-byte v2, v0, v1

    const/16 v1, 0x74

    const/16 v2, 0x2d

    aput-byte v2, v0, v1

    const/16 v1, 0x75

    const/16 v2, 0x2e

    aput-byte v2, v0, v1

    const/16 v1, 0x76

    const/16 v2, 0x2f

    aput-byte v2, v0, v1

    const/16 v1, 0x77

    aput-byte v4, v0, v1

    const/16 v1, 0x78

    aput-byte v5, v0, v1

    const/16 v1, 0x79

    aput-byte v6, v0, v1

    const/16 v1, 0x7a

    aput-byte v7, v0, v1

    sput-object v0, Lcom/samsung/android/rlc/util/Base64;->DECODE_TABLE:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static correctInput([B)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    array-length v1, p0

    rem-int/lit8 v1, v1, 0x4

    rsub-int/lit8 v2, v1, 0x4

    array-length v1, p0

    add-int/2addr v1, v2

    new-array v3, v1, [B

    const/4 v1, 0x0

    const/4 v4, 0x0

    array-length v5, p0

    invoke-static {p0, v1, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v3

    :goto_0
    if-lt v0, v2, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v1, v1, -0x1

    const/16 v4, 0x3d

    aput-byte v4, v3, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    throw v0
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 2

    const/4 v1, 0x0

    :try_start_0
    const-string/jumbo v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/rlc/util/Base64;->decode([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method public static decode([B)[B
    .locals 10

    const/16 v5, 0x3d

    const/4 v9, 0x3

    const/4 v2, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    array-length v3, p0

    if-eqz v3, :cond_1

    array-length v3, p0

    rem-int/lit8 v3, v3, 0x4

    if-eq v3, v0, :cond_2

    array-length v3, p0

    rem-int/lit8 v3, v3, 0x4

    if-nez v3, :cond_3

    :goto_0
    array-length v4, p0

    add-int/lit8 v3, v4, -0x2

    aget-byte v3, p0, v3

    if-eq v3, v5, :cond_4

    add-int/lit8 v2, v4, -0x1

    aget-byte v2, p0, v2

    if-eq v2, v5, :cond_0

    move v0, v1

    :cond_0
    :goto_1
    mul-int/lit8 v2, v4, 0x3

    div-int/lit8 v2, v2, 0x4

    sub-int v5, v2, v0

    new-array v2, v5, [B

    const/4 v0, 0x4

    new-array v6, v0, [B

    move v0, v1

    move v3, v1

    :goto_2
    if-lt v3, v4, :cond_5

    move-object v0, v2

    :goto_3
    return-object v0

    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "Input length is invalid."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_3

    :cond_3
    invoke-static {p0}, Lcom/samsung/android/rlc/util/Base64;->correctInput([B)[B

    move-result-object p0

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1

    :cond_5
    rem-int/lit8 v1, v3, 0x4

    sget-object v7, Lcom/samsung/android/rlc/util/Base64;->DECODE_TABLE:[B

    aget-byte v8, p0, v3

    aget-byte v7, v7, v8

    int-to-byte v7, v7

    aput-byte v7, v6, v1

    rem-int/lit8 v1, v3, 0x4

    if-eq v1, v9, :cond_7

    :cond_6
    :goto_4
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_2

    :cond_7
    add-int/lit8 v1, v0, 0x1

    const/4 v7, 0x0

    aget-byte v7, v6, v7

    shl-int/lit8 v7, v7, 0x2

    and-int/lit16 v7, v7, 0xfc

    const/4 v8, 0x1

    aget-byte v8, v6, v8

    shr-int/lit8 v8, v8, 0x4

    and-int/lit8 v8, v8, 0x3

    or-int/2addr v7, v8

    int-to-byte v7, v7

    int-to-byte v7, v7

    aput-byte v7, v2, v0

    if-lt v1, v5, :cond_8

    move v0, v1

    :goto_5
    if-ge v0, v5, :cond_6

    add-int/lit8 v1, v0, 0x1

    const/4 v7, 0x2

    aget-byte v7, v6, v7

    shl-int/lit8 v7, v7, 0x6

    and-int/lit16 v7, v7, 0xc0

    const/4 v8, 0x3

    aget-byte v8, v6, v8

    and-int/lit8 v8, v8, 0x3f

    or-int/2addr v7, v8

    int-to-byte v7, v7

    int-to-byte v7, v7

    aput-byte v7, v2, v0

    move v0, v1

    goto :goto_4

    :cond_8
    add-int/lit8 v0, v1, 0x1

    const/4 v7, 0x1

    aget-byte v7, v6, v7

    shl-int/lit8 v7, v7, 0x4

    and-int/lit16 v7, v7, 0xf0

    const/4 v8, 0x2

    aget-byte v8, v6, v8

    shr-int/lit8 v8, v8, 0x2

    and-int/lit8 v8, v8, 0xf

    or-int/2addr v7, v8

    int-to-byte v7, v7

    int-to-byte v7, v7

    aput-byte v7, v2, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5
.end method

.method public static encode(Ljava/lang/String;)[B
    .locals 2

    const/4 v1, 0x0

    :try_start_0
    const-string/jumbo v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/rlc/util/Base64;->encode([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method public static encode(Ljava/lang/String;Z)[B
    .locals 2

    const/4 v1, 0x0

    :try_start_0
    const-string/jumbo v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0, p1}, Lcom/samsung/android/rlc/util/Base64;->encode([BZ)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method public static encode([B)[B
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/samsung/android/rlc/util/Base64;->encode([BZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static encode([BZ)[B
    .locals 13

    const/4 v3, 0x0

    const/4 v12, 0x2

    const/4 v4, 0x0

    if-nez p1, :cond_0

    :try_start_0
    sget-object v0, Lcom/samsung/android/rlc/util/Base64;->ENCODE_TABLE:[B

    :goto_0
    array-length v6, p0

    add-int/lit8 v1, v6, 0x2

    div-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x3

    sub-int v7, v1, v6

    add-int/lit8 v1, v6, 0x2

    add-int/lit8 v2, v6, 0x2

    rem-int/lit8 v2, v2, 0x3

    sub-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x4

    div-int/lit8 v1, v1, 0x3

    new-array v2, v1, [B

    const/4 v1, 0x3

    new-array v8, v1, [B

    move v1, v4

    move v5, v4

    :goto_1
    add-int v9, v6, v7

    if-lt v5, v9, :cond_1

    move v0, v4

    :goto_2
    if-lt v0, v7, :cond_4

    move-object v0, v2

    :goto_3
    return-object v0

    :cond_0
    sget-object v0, Lcom/samsung/android/rlc/util/Base64;->URL_SAFE_ENCODE_TABLE:[B

    goto :goto_0

    :cond_1
    if-lt v5, v6, :cond_2

    rem-int/lit8 v9, v5, 0x3

    const/4 v10, 0x0

    aput-byte v10, v8, v9

    :goto_4
    rem-int/lit8 v9, v5, 0x3

    if-eq v9, v12, :cond_3

    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    rem-int/lit8 v9, v5, 0x3

    aget-byte v10, p0, v5

    int-to-byte v10, v10

    aput-byte v10, v8, v9

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v0, v3

    goto :goto_3

    :cond_3
    add-int/lit8 v9, v1, 0x1

    const/4 v10, 0x0

    aget-byte v10, v8, v10

    shr-int/lit8 v10, v10, 0x2

    and-int/lit8 v10, v10, 0x3f

    aget-byte v10, v0, v10

    int-to-byte v10, v10

    aput-byte v10, v2, v1

    add-int/lit8 v1, v9, 0x1

    const/4 v10, 0x0

    aget-byte v10, v8, v10

    shl-int/lit8 v10, v10, 0x4

    and-int/lit8 v10, v10, 0x30

    const/4 v11, 0x1

    aget-byte v11, v8, v11

    shr-int/lit8 v11, v11, 0x4

    and-int/lit8 v11, v11, 0xf

    or-int/2addr v10, v11

    aget-byte v10, v0, v10

    int-to-byte v10, v10

    aput-byte v10, v2, v9

    add-int/lit8 v9, v1, 0x1

    const/4 v10, 0x1

    aget-byte v10, v8, v10

    shl-int/lit8 v10, v10, 0x2

    and-int/lit8 v10, v10, 0x3c

    const/4 v11, 0x2

    aget-byte v11, v8, v11

    shr-int/lit8 v11, v11, 0x6

    and-int/lit8 v11, v11, 0x3

    or-int/2addr v10, v11

    aget-byte v10, v0, v10

    int-to-byte v10, v10

    aput-byte v10, v2, v1

    add-int/lit8 v1, v9, 0x1

    const/4 v10, 0x2

    aget-byte v10, v8, v10

    and-int/lit8 v10, v10, 0x3f

    aget-byte v10, v0, v10

    int-to-byte v10, v10

    aput-byte v10, v2, v9

    goto :goto_5

    :cond_4
    add-int/lit8 v1, v1, -0x1

    const/16 v4, 0x3d

    aput-byte v4, v2, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method
